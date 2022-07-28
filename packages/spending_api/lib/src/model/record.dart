import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record.g.dart';

@JsonSerializable()
class ApiRecordModel {
  ApiRecordModel({
    required this.amount,
    required this.currencyId,
    required this.categoryId,
    required this.personIds,
    required this.receiptIds,
    required this.remarks,
    required this.dateTime,
  });

  factory ApiRecordModel.fromJson(Map<String, Object?> json) =>
      _$ApiRecordModelFromJson(json);

  final double amount;
  final String currencyId;
  final String categoryId;
  final List<String> personIds;
  final List<String> receiptIds;
  final String remarks;
  final DateTime dateTime;

  Map<String, Object?> toJson() => _$ApiRecordModelToJson(this);
}

@Collection<ApiRecordModel>('records')
ApiRecordModelCollectionReference recordsRef([FirebaseFirestore? firestore]) =>
    ApiRecordModelCollectionReference(firestore);
