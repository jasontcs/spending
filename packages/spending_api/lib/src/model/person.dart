import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class ApiPersonModel {
  ApiPersonModel({
    this.id,
    required this.title,
  });

  @JsonKey(ignore: true)
  final String? id;
  final String title;

  ApiPersonModel copyWith({
    String? id,
    String? title,
  }) =>
      ApiPersonModel(
        id: id ?? this.id,
        title: title ?? this.title,
      );
}

@Collection<ApiPersonModel>('people')
ApiPersonModelCollectionReference peopleRef([FirebaseFirestore? firestore]) =>
    ApiPersonModelCollectionReference(firestore);
