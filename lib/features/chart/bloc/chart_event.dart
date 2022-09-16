part of 'chart_bloc.dart';

abstract class ChartEvent {}

class ChartCategoriesWithRecordsChanged extends ChartEvent {
  ChartCategoriesWithRecordsChanged(this.categoriesWithRecords);

  final List<CategoryWithRecords> categoriesWithRecords;
}

class ChartPeopleWithRecordsChanged extends ChartEvent {
  ChartPeopleWithRecordsChanged(this.peopleWithRecords);

  final List<PersonWithRecords> peopleWithRecords;
}

class ChartMonthChanged extends ChartEvent {
  ChartMonthChanged(this.month);

  final DateTime month;
}

class ChartTrendBarSelected extends ChartEvent {
  ChartTrendBarSelected(this.date);

  final DateTime date;
}

class ChartRecordsUpdated extends ChartEvent {
  ChartRecordsUpdated(this.records);

  final List<Record> records;
}
