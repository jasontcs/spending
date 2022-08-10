part of 'categories_bloc.dart';

abstract class CategoriesEvent {}

class CategoriesItemsChanged extends CategoriesEvent {
  CategoriesItemsChanged(this.categories);

  final List<Category> categories;
}
