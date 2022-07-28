import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency.g.dart';

@JsonSerializable()
class ApiCurrencyModel {
  ApiCurrencyModel({
    required this.rate,
    required this.title,
    required this.flag,
    required this.recordIds,
  });

  factory ApiCurrencyModel.fromJson(Map<String, Object?> json) =>
      _$ApiCurrencyModelFromJson(json);

  final double rate;
  final String title;
  final String flag;
  final List<String> recordIds;

  Map<String, Object?> toJson() => _$ApiCurrencyModelToJson(this);
}

@Collection<ApiCurrencyModel>('currencies')
ApiCurrencyModelCollectionReference currenciesRef(
        [FirebaseFirestore? firestore]) =>
    ApiCurrencyModelCollectionReference(firestore);
