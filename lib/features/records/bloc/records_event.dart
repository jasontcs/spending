part of 'records_bloc.dart';

abstract class RecordsEvent {}

class RecordsChanged {
  RecordsChanged(this.records);

  final List<Record> records;
}
