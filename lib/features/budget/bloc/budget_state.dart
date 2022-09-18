part of 'budget_bloc.dart';

@freezed
class BudgetState with _$BudgetState {
  const factory BudgetState({
    required DateTime month,
    @Default({}) Map<Category, List<Record>> categoriesWithRecords,
  }) = _BudgetState;
  const BudgetState._();
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

  num get totalThisMonth => categoriesWithTotalThisMonth.entries
      .fold<num>(0, (previousValue, element) => previousValue += element.value);
}
