import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record.g.dart';

@JsonSerializable()
class ApiRecordModel {
  ApiRecordModel({
    this.id,
    required this.amount,
    required this.currencyTitle,
    required this.categoryTitle,
    required this.personTitle,
    required this.receiptsUrl,
    required this.remarks,
    required this.dateTime,
  });

  @JsonKey(ignore: true)
  final String? id;
  final double amount;
  final String currencyTitle;
  final String categoryTitle;
  final String personTitle;
  final List<String> receiptsUrl;
  final String remarks;
  final DateTime dateTime;

  ApiRecordModel copyWith({
    String? id,
    double? amount,
    String? currencyTitle,
    String? categoryTitle,
    String? personTitle,
    List<String>? receiptsUrl,
    String? remarks,
    DateTime? dateTime,
  }) {
    return ApiRecordModel(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      currencyTitle: currencyTitle ?? this.currencyTitle,
      categoryTitle: categoryTitle ?? this.categoryTitle,
      personTitle: personTitle ?? this.personTitle,
      receiptsUrl: receiptsUrl ?? this.receiptsUrl,
      remarks: remarks ?? this.remarks,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}

@Collection<ApiRecordModel>('records')
ApiRecordModelCollectionReference recordsRef([FirebaseFirestore? firestore]) =>
    ApiRecordModelCollectionReference(firestore);
