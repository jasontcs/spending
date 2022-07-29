import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'receipt.g.dart';

@JsonSerializable()
class ApiReceiptModel {
  ApiReceiptModel({required this.imageUrl, required this.recordId});

  final String imageUrl;
  final String recordId;
}

@Collection<ApiReceiptModel>('receipts')
ApiReceiptModelCollectionReference receiptsRef(
        [FirebaseFirestore? firestore]) =>
    ApiReceiptModelCollectionReference(firestore);
