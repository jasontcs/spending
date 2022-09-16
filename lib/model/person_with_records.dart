import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';
part 'person_with_records.freezed.dart';

@freezed
class PersonWithRecords with _$PersonWithRecords {
  factory PersonWithRecords({
    required Person person,
    @Default([]) List<Record> records,
  }) = _PersonWithRecords;
}
