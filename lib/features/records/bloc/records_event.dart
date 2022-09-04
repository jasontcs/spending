part of 'records_bloc.dart';

abstract class RecordsEvent {}

class RecordsItemsChanged extends RecordsEvent {
  RecordsItemsChanged(this.records);

  final List<Record> records;
}

class RecordsCalendarConfigChanged extends RecordsEvent {
  RecordsCalendarConfigChanged(this.config);

  final TableCalendarConfig config;
}
