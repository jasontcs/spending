part of 'categories_bloc.dart';

class CategoriesState {
  CategoriesState({
    List<Category>? categories,
  }) : categories = categories ?? [];

  final List<Category> categories;

  CategoriesState copyWith({
    List<Category>? categories,
  }) =>
      CategoriesState(
        categories: categories ?? this.categories,
      );
}
