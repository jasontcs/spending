import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class Record with _$Record {
  factory Record({
    final String? id,
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
  factory Currency({
    required double rate,
    required String title,
    required String flag,
  }) = _Currency;
}

@freezed
class Category with _$Category {
  factory Category({
    required double budget,
    required String title,
    required String icon,
  }) = _Category;
}

@freezed
class Person with _$Person {
  factory Person({
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
