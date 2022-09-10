part of 'chart_bloc.dart';

@freezed
class ChartState with _$ChartState {
  const ChartState._();

  const factory ChartState({
    DateTime? month,
    @Default({}) Map<Category, List<Record>> categoriesWithRecords,
    @Default({}) Map<Person, List<Record>> peopleWithRecords,
  }) = _ChartState;

  Map<Category, num> get categoriesWithTotalThisMonth {
    return categoriesWithRecords.map((key, value) {
      final total = value.fold<num>(
          0,
          (previousValue, element) => isSameMonth(element.dateTime, month)
              ? previousValue += element.amount
              : previousValue);
      return MapEntry(key, total);
    });
  }

  num get totalThisMonth => categoriesWithTotalThisMonth.entries
      .fold<num>(0, (previousValue, element) => previousValue += element.value);
}
