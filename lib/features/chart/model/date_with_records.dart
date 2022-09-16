import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

part 'date_with_records.freezed.dart';

@freezed
class DateWithRecords with _$DateWithRecords {
  factory DateWithRecords({
    required DateTime date,
    @Default([]) List<Record> records,
  }) = _DateWithRecords;
}
