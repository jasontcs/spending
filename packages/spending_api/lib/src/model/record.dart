import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record.g.dart';

@JsonSerializable()
class ApiRecordModel {
  ApiRecordModel({
    this.id,
    required this.amount,
    required this.currencyId,
    required this.categoryId,
    required this.personId,
    required this.receiptsPath,
    required this.remarks,
    required this.dateTime,
    required this.createdAt,
    required this.updatedAt,
  });

  @JsonKey(ignore: true)
  final String? id;
  final num amount;
  final String currencyId;
  final String categoryId;
  final String personId;
  final List<String> receiptsPath;
  final String remarks;
  final DateTime dateTime;
  final DateTime createdAt;
  final DateTime updatedAt;

  ApiRecordModel copyWith({
    String? id,
    num? amount,
    String? currencyId,
    String? categoryId,
    String? personId,
    List<String>? receiptsPath,
    String? remarks,
    DateTime? dateTime,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ApiRecordModel(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      currencyId: currencyId ?? this.currencyId,
      categoryId: categoryId ?? this.categoryId,
      personId: personId ?? this.personId,
      receiptsPath: receiptsPath ?? this.receiptsPath,
      remarks: remarks ?? this.remarks,
      dateTime: dateTime ?? this.dateTime,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

@Collection<ApiRecordModel>('records')
ApiRecordModelCollectionReference recordsRef([FirebaseFirestore? firestore]) =>
    ApiRecordModelCollectionReference(firestore);
