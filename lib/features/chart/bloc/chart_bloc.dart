import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../model/category_with_records.dart';
import '../../../model/person_with_records.dart';
import '../chart.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

part 'chart_bloc.freezed.dart';
part 'chart_event.dart';
part 'chart_state.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  ChartBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(ChartState(
          month: DateTime(
            DateTime.now().year,
            DateTime.now().month,
          ),
        )) {
    on<ChartMonthChanged>(_onMonthChanged);
    on<ChartCategoriesWithRecordsChanged>(_onCategoriesWithRecordsChanged);
    on<ChartPeopleWithRecordsChanged>(_onPeopleWithRecordsChanged);
    on<ChartTrendBarSelected>(_onChartTrendBarSelected);
    on<ChartRecordsUpdated>(_onChartRecordsUpdated);

    _categoriesWithRecordsSubscription = CombineLatestStream.combine2(
      _spendingRepository.categoriesStream,
      _spendingRepository.recordsStream,
      (List<Category> a, List<Record> b) {
        final recordsMap = b.groupListsBy((record) => record.category);
        return a
            .map((e) =>
                CategoryWithRecords(category: e, records: recordsMap[e]!))
            .toList();
      },
    ).listen((value) {
      add(ChartCategoriesWithRecordsChanged(value));
    });
    _peopleWithRecordsSubscription = CombineLatestStream.combine2(
      _spendingRepository.peopleStream,
      _spendingRepository.recordsStream,
      (List<Person> a, List<Record> b) {
        final recordsMap = b.groupListsBy((record) => record.person);
        return a
            .map((e) => PersonWithRecords(person: e, records: recordsMap[e]!))
            .toList();
      },
    ).listen((value) {
      add(ChartPeopleWithRecordsChanged(value));
    });

    _recordsSubscription = _spendingRepository.recordsStream.listen((records) {
      add(ChartRecordsUpdated(records));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<List<CategoryWithRecords>>
      _categoriesWithRecordsSubscription;
  late StreamSubscription<List<PersonWithRecords>>
      _peopleWithRecordsSubscription;

  late StreamSubscription<List<Record>> _recordsSubscription;

  void _onMonthChanged(
    ChartMonthChanged event,
    Emitter<ChartState> emit,
  ) async {
    emit(state.copyWith(
      month: event.month,
      trendFocusedDate: null,
    ));
  }

  void _onCategoriesWithRecordsChanged(
    ChartCategoriesWithRecordsChanged event,
    Emitter<ChartState> emit,
  ) async {
    emit(state.copyWith(categoriesWithRecords: event.categoriesWithRecords));
  }

  void _onPeopleWithRecordsChanged(
    ChartPeopleWithRecordsChanged event,
    Emitter<ChartState> emit,
  ) async {
    emit(state.copyWith(peopleWithRecords: event.peopleWithRecords));
  }

  void _onChartTrendBarSelected(
    ChartTrendBarSelected event,
    Emitter<ChartState> emit,
  ) async {
    emit(state.copyWith(trendFocusedDate: event.date));
  }

  void _onChartRecordsUpdated(
    ChartRecordsUpdated event,
    Emitter<ChartState> emit,
  ) async {
    emit(state.copyWith(records: event.records));
  }

  @override
  Future<void> close() {
    _categoriesWithRecordsSubscription.cancel();
    _peopleWithRecordsSubscription.cancel();
    _recordsSubscription.cancel();
    return super.close();
  }
}
