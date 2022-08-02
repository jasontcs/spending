import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class Record with _$Record {
  const factory Record({
    String? id,
    required double amount,
    required Currency currency,
    required Category category,
    required Person person,
    required List<Receipt> receipts,
    required String remarks,
    required DateTime dateTime,
  }) = _Record;
}

@freezed
class Currency with _$Currency {
  const factory Currency({
    required double rate,
    required String title,
    required String flag,
    required List<Record> records,
  }) = _Currency;
}

@freezed
class Category with _$Category {
  const factory Category({
    required double budget,
    required String title,
    File? image,
    String? imageUrl,
    required List<Record> records,
  }) = _Category;
}

@freezed
class Person with _$Person {
  const factory Person({
    required String title,
    required List<Record> records,
  }) = _Person;
}

@freezed
class Receipt with _$Receipt {
  const factory Receipt({
    File? image,
    String? imageUrl,
    required Record? record,
  }) = _Receipt;
}
