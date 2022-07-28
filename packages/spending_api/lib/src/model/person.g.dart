// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ApiPersonModelCollectionReference
    implements
        ApiPersonModelQuery,
        FirestoreCollectionReference<ApiPersonModelQuerySnapshot> {
  factory ApiPersonModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ApiPersonModelCollectionReference;

  static ApiPersonModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ApiPersonModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ApiPersonModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  ApiPersonModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ApiPersonModelDocumentReference> add(ApiPersonModel value);
}

class _$ApiPersonModelCollectionReference extends _$ApiPersonModelQuery
    implements ApiPersonModelCollectionReference {
  factory _$ApiPersonModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ApiPersonModelCollectionReference._(
      firestore.collection('people').withConverter(
            fromFirestore: ApiPersonModelCollectionReference.fromFirestore,
            toFirestore: ApiPersonModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ApiPersonModelCollectionReference._(
    CollectionReference<ApiPersonModel> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<ApiPersonModel> get reference =>
      super.reference as CollectionReference<ApiPersonModel>;

  @override
  ApiPersonModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ApiPersonModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ApiPersonModelDocumentReference> add(ApiPersonModel value) {
    return reference
        .add(value)
        .then((ref) => ApiPersonModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiPersonModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ApiPersonModelDocumentReference
    extends FirestoreDocumentReference<ApiPersonModelDocumentSnapshot> {
  factory ApiPersonModelDocumentReference(
          DocumentReference<ApiPersonModel> reference) =
      _$ApiPersonModelDocumentReference;

  DocumentReference<ApiPersonModel> get reference;

  /// A reference to the [ApiPersonModelCollectionReference] containing this document.
  ApiPersonModelCollectionReference get parent {
    return _$ApiPersonModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiPersonModelDocumentSnapshot> snapshots();

  @override
  Future<ApiPersonModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String title,
    List<String> recordIds,
  });

  Future<void> set(ApiPersonModel value);
}

class _$ApiPersonModelDocumentReference
    extends FirestoreDocumentReference<ApiPersonModelDocumentSnapshot>
    implements ApiPersonModelDocumentReference {
  _$ApiPersonModelDocumentReference(this.reference);

  @override
  final DocumentReference<ApiPersonModel> reference;

  /// A reference to the [ApiPersonModelCollectionReference] containing this document.
  ApiPersonModelCollectionReference get parent {
    return _$ApiPersonModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiPersonModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return ApiPersonModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<ApiPersonModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return ApiPersonModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? title = _sentinel,
    Object? recordIds = _sentinel,
  }) async {
    final json = {
      if (title != _sentinel) "title": title as String,
      if (recordIds != _sentinel) "recordIds": recordIds as List<String>,
    };

    return reference.update(json);
  }

  Future<void> set(ApiPersonModel value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is ApiPersonModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class ApiPersonModelDocumentSnapshot extends FirestoreDocumentSnapshot {
  ApiPersonModelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<ApiPersonModel> snapshot;

  @override
  ApiPersonModelDocumentReference get reference {
    return ApiPersonModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ApiPersonModel? data;
}

abstract class ApiPersonModelQuery
    implements QueryReference<ApiPersonModelQuerySnapshot> {
  @override
  ApiPersonModelQuery limit(int limit);

  @override
  ApiPersonModelQuery limitToLast(int limit);

  ApiPersonModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ApiPersonModelQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ApiPersonModelQuery whereRecordIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? arrayContainsAny,
  });

  ApiPersonModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiPersonModelDocumentSnapshot? startAtDocument,
    ApiPersonModelDocumentSnapshot? endAtDocument,
    ApiPersonModelDocumentSnapshot? endBeforeDocument,
    ApiPersonModelDocumentSnapshot? startAfterDocument,
  });

  ApiPersonModelQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiPersonModelDocumentSnapshot? startAtDocument,
    ApiPersonModelDocumentSnapshot? endAtDocument,
    ApiPersonModelDocumentSnapshot? endBeforeDocument,
    ApiPersonModelDocumentSnapshot? startAfterDocument,
  });

  ApiPersonModelQuery orderByRecordIds({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ApiPersonModelDocumentSnapshot? startAtDocument,
    ApiPersonModelDocumentSnapshot? endAtDocument,
    ApiPersonModelDocumentSnapshot? endBeforeDocument,
    ApiPersonModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ApiPersonModelQuery extends QueryReference<ApiPersonModelQuerySnapshot>
    implements ApiPersonModelQuery {
  _$ApiPersonModelQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<ApiPersonModel> reference;

  ApiPersonModelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<ApiPersonModel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return ApiPersonModelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<ApiPersonModelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: ApiPersonModelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return ApiPersonModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<ApiPersonModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<ApiPersonModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  ApiPersonModelQuery limit(int limit) {
    return _$ApiPersonModelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  ApiPersonModelQuery limitToLast(int limit) {
    return _$ApiPersonModelQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  ApiPersonModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ApiPersonModelQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ApiPersonModelQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ApiPersonModelQuery(
      reference.where(
        "title",
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ApiPersonModelQuery whereRecordIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? arrayContainsAny,
  }) {
    return _$ApiPersonModelQuery(
      reference.where(
        "recordIds",
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContainsAny: arrayContainsAny,
      ),
      _collection,
    );
  }

  ApiPersonModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiPersonModelDocumentSnapshot? startAtDocument,
    ApiPersonModelDocumentSnapshot? endAtDocument,
    ApiPersonModelDocumentSnapshot? endBeforeDocument,
    ApiPersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ApiPersonModelQuery(query, _collection);
  }

  ApiPersonModelQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiPersonModelDocumentSnapshot? startAtDocument,
    ApiPersonModelDocumentSnapshot? endAtDocument,
    ApiPersonModelDocumentSnapshot? endBeforeDocument,
    ApiPersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("title", descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ApiPersonModelQuery(query, _collection);
  }

  ApiPersonModelQuery orderByRecordIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiPersonModelDocumentSnapshot? startAtDocument,
    ApiPersonModelDocumentSnapshot? endAtDocument,
    ApiPersonModelDocumentSnapshot? endBeforeDocument,
    ApiPersonModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("recordIds", descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ApiPersonModelQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiPersonModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ApiPersonModelQuerySnapshot
    extends FirestoreQuerySnapshot<ApiPersonModelQueryDocumentSnapshot> {
  ApiPersonModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<ApiPersonModel> snapshot;

  @override
  final List<ApiPersonModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ApiPersonModelDocumentSnapshot>>
      docChanges;
}

class ApiPersonModelQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements ApiPersonModelDocumentSnapshot {
  ApiPersonModelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<ApiPersonModel> snapshot;

  @override
  ApiPersonModelDocumentReference get reference {
    return ApiPersonModelDocumentReference(snapshot.reference);
  }

  @override
  final ApiPersonModel data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPersonModel _$ApiPersonModelFromJson(Map<String, dynamic> json) =>
    ApiPersonModel(
      title: json['title'] as String,
      recordIds:
          (json['recordIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApiPersonModelToJson(ApiPersonModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'recordIds': instance.recordIds,
    };
