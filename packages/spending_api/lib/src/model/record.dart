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
    required this.personId,
    required this.receiptIds,
    required this.remarks,
    required this.dateTime,
  });

  @JsonKey(ignore: true)
  late final String id;
  final double amount;
  final String currencyId;
  final String categoryId;
  final String personId;
  final List<String> receiptIds;
  final String remarks;
  final DateTime dateTime;
}

@Collection<ApiRecordModel>('records')
ApiRecordModelCollectionReference recordsRef([FirebaseFirestore? firestore]) =>
    ApiRecordModelCollectionReference(firestore);
