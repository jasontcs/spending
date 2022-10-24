import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'categories_cubit.freezed.dart';
part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit({
    required SpendingRepository spendingRepository,
    this.selectedId,
  })  : _spendingRepository = spendingRepository,
        super(const CategoriesState()) {
    _categoriesSubscription =
        _spendingRepository.categoriesStream.listen((categories) {
      emit(state.copyWith(
        categories: categories,
        selected: categories
            .singleWhereOrNull((category) => category.id == selectedId),
      ));
    });
  }
  final String? selectedId;
  final SpendingRepository _spendingRepository;
  late final StreamSubscription<List<Category>> _categoriesSubscription;

  @override
  Future<void> close() {
    _categoriesSubscription.cancel();
    return super.close();
  }
}
