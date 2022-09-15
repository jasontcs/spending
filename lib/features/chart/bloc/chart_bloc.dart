import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../common/common.dart';
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
        ))) {
    on<ChartMonthChanged>(_onMonthChanged);
    on<ChartCategoriesWithRecordsChanged>(_onCategoriesWithRecordsChanged);
    on<ChartPeopleWithRecordsChanged>(_onPeopleWithRecordsChanged);
    _categoriesWithRecordsSubscription = CombineLatestStream.combine2(
      _spendingRepository.categoriesStream,
      _spendingRepository.recordsStream,
      (List<Category> a, List<Record> b) {
        return Map.fromEntries(
            a.map((category) => MapEntry(category, <Record>[])).toList())
          ..addAll(b.groupListsBy((record) => record.category));
      },
    ).listen((value) {
      add(ChartCategoriesWithRecordsChanged(value));
    });
    _peopleWithRecordsSubscription = CombineLatestStream.combine2(
      _spendingRepository.peopleStream,
      _spendingRepository.recordsStream,
      (List<Person> a, List<Record> b) {
        return Map.fromEntries(
            a.map((people) => MapEntry(people, <Record>[])).toList())
          ..addAll(b.groupListsBy((record) => record.person));
      },
    ).listen((value) {
      add(ChartPeopleWithRecordsChanged(value));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<Map<Category, List<Record>>>
      _categoriesWithRecordsSubscription;
  late StreamSubscription<Map<Person, List<Record>>>
      _peopleWithRecordsSubscription;

  void _onMonthChanged(
    ChartMonthChanged event,
    Emitter<ChartState> emit,
  ) async {
    emit(state.copyWith(month: event.month));
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

  @override
  Future<void> close() {
    _categoriesWithRecordsSubscription.cancel();
    _peopleWithRecordsSubscription.cancel();
    return super.close();
  }
}
