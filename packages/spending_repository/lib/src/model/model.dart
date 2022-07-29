import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_api/spending_api.dart';

part 'model.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Record with _$Record {
  const factory Record({
    String? id,
    required double amount,
    required Currency? currency,
    required Category? category,
    required Person person,
    required List<Receipt> receipts,
    required String remarks,
    required DateTime dateTime,
  }) = _Record;
}

@Freezed(makeCollectionsUnmodifiable: false)
class Currency with _$Currency {
  const factory Currency({
    String? id,
    required double rate,
    required String title,
    required String flag,
    required List<Record> records,
  }) = _Currency;
}

@Freezed(makeCollectionsUnmodifiable: false)
class Category with _$Category {
  const factory Category({
    String? id,
    required double budget,
    required String title,
    String? imageUrl,
    required File image,
    required List<Record> records,
  }) = _Category;
}

@Freezed(makeCollectionsUnmodifiable: false)
class Person with _$Person {
  const factory Person({
    String? id,
    required String title,
    required List<Record> records,
  }) = _Person;
}

@Freezed(makeCollectionsUnmodifiable: false)
class Receipt with _$Receipt {
  const factory Receipt({
    String? id,
    String? imageUrl,
    required File image,
    required Record? record,
  }) = _Receipt;
}
