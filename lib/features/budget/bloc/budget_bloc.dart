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
    on<BudgetCategoriesBudgetUpdated>(_onBudgetCategoriesBudgetUpdated);
    on<BudgetMainCurrencyUpdated>(_onBudgetMainCurrencyUpdated);
    _categoriesWithRecordsSubscription = CombineLatestStream.combine2(
        _spendingRepository.categoriesStream, _spendingRepository.recordsStream,
        (List<Category> a, List<Record> b) {
      return Map.fromEntries(
          a.map((category) => MapEntry(category, <Record>[])).toList())
        ..addAll(b.groupListsBy((record) => record.category));
    }).listen((value) {
      add(BudgetCategoriesWithRecordsChanged(value));
    });
    _currenciesSubscription =
        _spendingRepository.currenciesStream.listen((currencies) {
      add(BudgetMainCurrencyUpdated(
          currencies.singleWhereOrNull((currency) => currency.main)));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<Map<Category, List<Record>>>
      _categoriesWithRecordsSubscription;
  late StreamSubscription<List<Currency>> _currenciesSubscription;

  void _onBudgetCategoriesWithRecordsChanged(
    BudgetCategoriesWithRecordsChanged event,
    Emitter<BudgetState> emit,
  ) {
    emit(state.copyWith(categoriesWithRecords: event.categoriesWithRecords));
  }

  void _onBudgetMonthChanged(
    BudgetMonthChanged event,
    Emitter<BudgetState> emit,
  ) {
    emit(state.copyWith(month: event.month));
  }

  Future<void> _onBudgetCategoriesBudgetUpdated(
    BudgetCategoriesBudgetUpdated event,
    Emitter<BudgetState> emit,
  ) async {
    await _spendingRepository.updateCategory(
        event.category, event.category.copyWith(budget: event.budget ?? 0));
  }

  void _onBudgetMainCurrencyUpdated(
    BudgetMainCurrencyUpdated event,
    Emitter<BudgetState> emit,
  ) {
    emit(state.copyWith(mainCurrency: event.mainCurrency));
  }

  @override
  Future<void> close() {
    _categoriesWithRecordsSubscription.cancel();
    _currenciesSubscription.cancel();
    return super.close();
  }
}
