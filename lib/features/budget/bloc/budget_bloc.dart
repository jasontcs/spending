import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:spending_repository/spending_repository.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'budget_bloc.freezed.dart';
part 'budget_event.dart';
part 'budget_state.dart';

class BudgetBloc extends Bloc<BudgetEvent, BudgetState> {
  BudgetBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(BudgetState(
            month: DateTime(
          DateTime.now().year,
          DateTime.now().month,
        ))) {
    on<BudgetMonthChanged>(_onBudgetMonthChanged);
    on<BudgetCategoriesWithRecordsChanged>(
        _onBudgetCategoriesWithRecordsChanged);
    _categoriesWithRecordsSubscription = CombineLatestStream.combine2(
        _spendingRepository.categoriesStream, _spendingRepository.recordsStream,
        (List<Category> a, List<Record> b) {
      return Map.fromEntries(
          a.map((category) => MapEntry(category, <Record>[])).toList())
        ..addAll(b.groupListsBy((record) => record.category));
    }).listen((value) {
      add(BudgetCategoriesWithRecordsChanged(value));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<Map<Category, List<Record>>>
      _categoriesWithRecordsSubscription;

  void _onBudgetCategoriesWithRecordsChanged(
    BudgetCategoriesWithRecordsChanged event,
    Emitter<BudgetState> emit,
  ) async {
    emit(state.copyWith(categoriesWithRecords: event.categoriesWithRecords));
  }

  void _onBudgetMonthChanged(
    BudgetMonthChanged event,
    Emitter<BudgetState> emit,
  ) async {
    emit(state.copyWith(month: event.month));
  }

  @override
  Future<void> close() {
    _categoriesWithRecordsSubscription.cancel();
    return super.close();
  }
}
