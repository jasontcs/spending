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

class BudgetCategoriesBudgetUpdated extends BudgetEvent {
  BudgetCategoriesBudgetUpdated({required this.category, this.budget});

  final Category category;
  final num? budget;
}

class BudgetMainCurrencyUpdated extends BudgetEvent {
  BudgetMainCurrencyUpdated(this.mainCurrency);

  final Currency? mainCurrency;
}
