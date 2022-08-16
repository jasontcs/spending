part of 'category_bloc.dart';

abstract class CategoryEvent {}

class CategoryItemLoaded extends CategoryEvent {
  CategoryItemLoaded(this.cid);

  final String? cid;
}

class CategoryFormEdited extends CategoryEvent {}

class CategoryFormSaved extends CategoryEvent {
  CategoryFormSaved(this.category);

  final Category category;
}

class CategoryRemoveRequested extends CategoryEvent {}
