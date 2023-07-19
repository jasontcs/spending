import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../common/common.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required SpendingRepository spendingRepository,
  })  : _spendingRepository = spendingRepository,
        super(const CategoryState()) {
    on<CategoryItemLoaded>(_onItemLoaded);
    on<CategoryFormEdited>(_onFormEdited);
    on<CategoryFormSaved>(_onFormSaved);
    on<CategoryRemoveRequested>(_onRemoveRequested);
    on<CategoryMainCurrencyUpdated>(_onMainCurrencyUpdated);
    _currenciesSubscription =
        _spendingRepository.currenciesStream.listen((currencies) {
      add(CategoryMainCurrencyUpdated(
          currencies.singleWhereOrNull((currency) => currency.main)));
    });
  }
  final SpendingRepository _spendingRepository;
  late final StreamSubscription<List<Currency>> _currenciesSubscription;

  Future<void> _onItemLoaded(
    CategoryItemLoaded event,
    Emitter<CategoryState> emit,
  ) async {
    if (event.cid != null) {
      emit(state.copyWith(status: AppFormStatus.fetching));
      final result = await _spendingRepository.getCategory(event.cid!);
      emit(state.copyWith(category: result, status: AppFormStatus.idle));
    } else {
      emit(state.copyWith(
        category: Category(
          title: '',
          icon: '',
          budget: 0,
        ),
        status: AppFormStatus.idle,
      ));
    }
  }

  void _onFormEdited(
    CategoryFormEdited event,
    Emitter<CategoryState> emit,
  ) {
    emit(state.copyWith(status: AppFormStatus.unsaved));
  }

  Future<void> _onFormSaved(
    CategoryFormSaved event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(status: AppFormStatus.posting));
    if (event.category.id == null) {
      final result = await _spendingRepository.addCategory(event.category);
      emit(state.copyWith(category: result, status: AppFormStatus.idle));
    } else {
      final result = await _spendingRepository.updateCategory(
          state.category!, event.category);
      emit(state.copyWith(category: result, status: AppFormStatus.idle));
    }
  }

  Future<void> _onRemoveRequested(
    CategoryRemoveRequested event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(status: AppFormStatus.posting));
    final result = await _spendingRepository.deleteCategory(state.category!);
    emit(state.copyWith(category: result, status: AppFormStatus.idle));
  }

  void _onMainCurrencyUpdated(
    CategoryMainCurrencyUpdated event,
    Emitter<CategoryState> emit,
  ) {
    emit(state.copyWith(mainCurrency: event.mainCurrency));
  }

  @override
  Future<void> close() {
    _currenciesSubscription.cancel();
    return super.close();
  }
}
