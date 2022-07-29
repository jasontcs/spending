import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class ApiCategoryModel {
  ApiCategoryModel({
    required this.title,
    required this.budget,
    required this.imageUrl,
    required this.recordIds,
  });

  @JsonKey(ignore: true)
  late final String id;
  final String title;
  final double budget;
  final String? imageUrl;
  final List<String> recordIds;
}

@Collection<ApiCategoryModel>('catogeries')
ApiCategoryModelCollectionReference catogeriesRef(
        [FirebaseFirestore? firestore]) =>
    ApiCategoryModelCollectionReference(firestore);
