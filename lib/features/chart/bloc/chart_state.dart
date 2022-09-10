part of 'chart_bloc.dart';

@freezed
class ChartState with _$ChartState {
  const factory ChartState({
    DateTime? month,
    @Default({}) Map<Category, List<Record>> categoriesWithRecords,
    @Default({}) Map<Person, List<Record>> peopleWithRecords,
  }) = _ChartState;
}
