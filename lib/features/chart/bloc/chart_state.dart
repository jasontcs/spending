part of 'chart_bloc.dart';

@freezed
class ChartState with _$ChartState {
  const ChartState._();

  const factory ChartState({
    required DateTime month,
    @Default({}) Map<Category, List<Record>> categoriesWithRecords,
    @Default({}) Map<Person, List<Record>> peopleWithRecords,
    @Default([]) List<Record> records,
    DateTime? trendFocusedDate,
  }) = _ChartState;

  Map<Category, List<Record>> get categoriesWithRecordsThisMonth =>
      categoriesWithRecords.map((key, value) => MapEntry(
          key,
          value
              .where((record) => DateUtils.isSameMonth(record.dateTime, month))
              .toList()));

  Map<Category, num> get categoriesWithTotalThisMonth {
    return categoriesWithRecordsThisMonth.map((key, value) => MapEntry(
        key,
        value.fold<num>(
            0, (previousValue, element) => previousValue += element.amount)));
  }

  Map<Person, List<Record>> get peopleWithRecordsThisMonth =>
      peopleWithRecords.map((key, value) => MapEntry(
          key,
          value
              .where((record) => DateUtils.isSameMonth(record.dateTime, month))
              .toList()));

  Map<Person, num> get peopleWithTotalThisMonth {
    return peopleWithRecordsThisMonth.map((key, value) => MapEntry(
        key,
        value.fold<num>(
            0, (previousValue, element) => previousValue += element.amount)));
  }

  num get totalThisMonth => categoriesWithTotalThisMonth.entries
      .fold<num>(0, (previousValue, element) => previousValue += element.value);
}
