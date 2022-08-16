part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(AppFormStatus.init) AppFormStatus status,
    Category? category,
  }) = _CategoryState;
}
