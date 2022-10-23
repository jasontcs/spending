part of 'chart_bloc.dart';

@freezed
class ChartState with _$ChartState {
  const factory ChartState({
    required DateTime month,
    @Default([]) List<CategoryWithRecords> categoriesWithRecords,
    @Default([]) List<PersonWithRecords> peopleWithRecords,
    @Default([]) List<Record> records,
    DateTime? trendFocusedDate,
    Currency? mainCurrency,
  }) = _ChartState;
  const ChartState._();

  num get totalThisMonth => records
      .where((record) => DateUtils.isSameMonth(record.dateTime, month))
      .fold<num>(0,
          (previousValue, element) => previousValue += element.relativeAmount);
}

extension CategoryWithRecordsX on CategoryWithRecords {
  num get total => records.fold(
      0, (previousValue, record) => previousValue + record.relativeAmount);
  CategoryWithRecords whereMonth(DateTime month) => copyWith(
      records: records
          .where((record) => DateUtils.isSameMonth(record.dateTime, month))
          .toList());

  List<DateWithRecords> datesWithRecordsWithMonth(DateTime month) {
    final days = List.generate(
        DateUtils.getDaysInMonth(month.year, month.month),
        (index) => DateTime(month.year, month.month, 1 + index));
    final dateWithRecordsMap =
        records.groupListsBy((record) => DateUtils.dateOnly(record.dateTime));
    return days
        .map((day) =>
            DateWithRecords(date: day, records: dateWithRecordsMap[day] ?? []))
        .toList();
  }
}

extension PersonWithRecordsX on PersonWithRecords {
  num get total => records.fold(
      0, (previousValue, record) => previousValue + record.relativeAmount);
  PersonWithRecords whereMonth(DateTime month) => copyWith(
      records: records
          .where((record) => DateUtils.isSameMonth(record.dateTime, month))
          .toList());
}
