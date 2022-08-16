part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({@Default([]) List<Category> categories}) =
      _CategoriesState;
}
