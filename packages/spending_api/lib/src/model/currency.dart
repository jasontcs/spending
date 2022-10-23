import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency.g.dart';

@JsonSerializable()
class ApiCurrencyModel {
  ApiCurrencyModel({
    this.id,
    required this.rate,
    required this.title,
    required this.flag,
    required this.updatedAt,
    required this.main,
  });

  @JsonKey(ignore: true)
  final String? id;
  final num rate;
  final String title;
  final String flag;
  final DateTime updatedAt;
  @JsonKey(defaultValue: false)
  final bool main;

  ApiCurrencyModel copyWith({
    String? id,
    num? rate,
    String? title,
    String? flag,
    DateTime? updatedAt,
    bool? main,
  }) {
    return ApiCurrencyModel(
      id: id ?? this.id,
      rate: rate ?? this.rate,
      title: title ?? this.title,
      flag: flag ?? this.flag,
      updatedAt: updatedAt ?? this.updatedAt,
      main: main ?? this.main,
    );
  }
}

@Collection<ApiCurrencyModel>('currencies')
ApiCurrencyModelCollectionReference currenciesRef(
        [FirebaseFirestore? firestore]) =>
    ApiCurrencyModelCollectionReference(firestore);
