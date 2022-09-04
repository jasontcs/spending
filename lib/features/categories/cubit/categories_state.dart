part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    @Default([]) List<Category> categories,
    Category? selected,
  }) = _CategoriesState;
}
