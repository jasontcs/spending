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
  });

  final double rate;
  final String title;
  final String flag;
}

@Collection<ApiCurrencyModel>('currencies')
ApiCurrencyModelCollectionReference currenciesRef(
        [FirebaseFirestore? firestore]) =>
    ApiCurrencyModelCollectionReference(firestore);
