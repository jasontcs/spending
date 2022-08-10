part of 'records_bloc.dart';

class RecordsState extends Equatable {
  RecordsState({List<Record>? records}) : records = records ?? [];

  final List<Record> records;

  @override
  List<Object?> get props => [];

  RecordsState copyWith({List<Record>? records}) =>
      RecordsState(records: records ?? this.records);
}
