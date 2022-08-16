import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

part 'categories_state.dart';
part 'categories_cubit.freezed.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(CategoriesState()) {
    _categoriesSubscription =
        _spendingRepository.categoriesStream.listen((categories) {
      emit(state.copyWith(categories: categories));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<List<Category>> _categoriesSubscription;

  @override
  Future<void> close() {
    _categoriesSubscription.cancel();
    return super.close();
  }
}
