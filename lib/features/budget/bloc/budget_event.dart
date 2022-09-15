part of 'budget_bloc.dart';

abstract class BudgetEvent {}

class BudgetCategoriesWithRecordsChanged extends BudgetEvent {
  BudgetCategoriesWithRecordsChanged(this.categoriesWithRecords);

  final Map<Category, List<Record>> categoriesWithRecords;
}

class BudgetMonthChanged extends BudgetEvent {
  BudgetMonthChanged(this.month);

  final DateTime month;
}
