import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';
part 'category_with_records.freezed.dart';

@freezed
class CategoryWithRecords with _$CategoryWithRecords {
  factory CategoryWithRecords({
    required Category category,
    @Default([]) List<Record> records,
  }) = _CategoryWithRecords;
  const CategoryWithRecords._();
}
