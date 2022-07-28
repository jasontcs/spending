import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class ApiPersonModel {
  ApiPersonModel({
    required this.title,
    required this.recordIds,
  });

  factory ApiPersonModel.fromJson(Map<String, Object?> json) =>
      _$ApiPersonModelFromJson(json);

  final String title;
  final List<String> recordIds;

  Map<String, Object?> toJson() => _$ApiPersonModelToJson(this);
}

@Collection<ApiPersonModel>('people')
ApiPersonModelCollectionReference peopleRef([FirebaseFirestore? firestore]) =>
    ApiPersonModelCollectionReference(firestore);
