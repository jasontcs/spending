part of 'records_bloc.dart';

abstract class RecordsEvent {}

class RecordsItemsChanged extends RecordsEvent {
  RecordsItemsChanged(this.records);

  final List<Record> records;
}
