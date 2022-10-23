import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class Record with _$Record {
  Record._();

  factory Record({
    final String? id,
    required num amount,
    required Currency currency,
    required Category category,
    required Person person,
    required List<Receipt> receipts,
    required String remarks,
    required DateTime dateTime,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Record;

  num get relativeAmount => amount * currency.rate;
}

@freezed
class Currency with _$Currency {
  factory Currency({
    final String? id,
    required num rate,
    required String title,
    required String flag,
    DateTime? updatedAt,
    required bool main,
  }) = _Currency;
}

@freezed
class Category with _$Category {
  factory Category({
    final String? id,
    required num budget,
    required String title,
    required String icon,
  }) = _Category;
}

@freezed
class Person with _$Person {
  factory Person({
    final String? id,
    required String title,
  }) = _Person;
}

@freezed
class Receipt with _$Receipt {
  factory Receipt({
    required SpendingImage image,
  }) = _Receipt;
}

@freezed
class SpendingImage with _$SpendingImage {
  factory SpendingImage({
    File? imageFile,
    String? imageUrl,
    String? imagePath,
  }) = _SpendingImage;
}
