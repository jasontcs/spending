part of 'chart_bloc.dart';

abstract class ChartEvent {}

class ChartRecordsChanged extends ChartEvent {
  ChartRecordsChanged(this.records);

  final List<Record> records;
}

class ChartMonthChanged extends ChartEvent {
  ChartMonthChanged(this.month);

  final DateTime month;
}
