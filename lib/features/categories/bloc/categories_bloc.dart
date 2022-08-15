import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

part 'categories_state.dart';
part 'categories_event.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(CategoriesState()) {
    on<CategoriesItemsChanged>(_onItemsChanged);
    _categoriesSubscription =
        _spendingRepository.categoriesStream.listen((categories) {
      add(CategoriesItemsChanged(categories));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<List<Category>> _categoriesSubscription;

  @override
  Future<void> close() {
    _categoriesSubscription.cancel();
    return super.close();
  }

  void _onItemsChanged(
    CategoriesItemsChanged event,
    Emitter<CategoriesState> emit,
  ) {
    emit(state.copyWith(categories: event.categories));
  }
}
