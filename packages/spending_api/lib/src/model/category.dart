import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class ApiCategoryModel {
  ApiCategoryModel({
    required this.title,
    required this.budget,
    required this.icon,
  });

  final String title;
  final double budget;
  final String icon;
}

@Collection<ApiCategoryModel>('categories')
ApiCategoryModelCollectionReference categoriesRef(
        [FirebaseFirestore? firestore]) =>
    ApiCategoryModelCollectionReference(firestore);
