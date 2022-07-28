// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

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
abstract class ApiReceiptModelCollectionReference
    implements
        ApiReceiptModelQuery,
        FirestoreCollectionReference<ApiReceiptModelQuerySnapshot> {
  factory ApiReceiptModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ApiReceiptModelCollectionReference;

  static ApiReceiptModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ApiReceiptModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ApiReceiptModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  ApiReceiptModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ApiReceiptModelDocumentReference> add(ApiReceiptModel value);
}

class _$ApiReceiptModelCollectionReference extends _$ApiReceiptModelQuery
    implements ApiReceiptModelCollectionReference {
  factory _$ApiReceiptModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ApiReceiptModelCollectionReference._(
      firestore.collection('receipts').withConverter(
            fromFirestore: ApiReceiptModelCollectionReference.fromFirestore,
            toFirestore: ApiReceiptModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ApiReceiptModelCollectionReference._(
    CollectionReference<ApiReceiptModel> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<ApiReceiptModel> get reference =>
      super.reference as CollectionReference<ApiReceiptModel>;

  @override
  ApiReceiptModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ApiReceiptModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ApiReceiptModelDocumentReference> add(ApiReceiptModel value) {
    return reference
        .add(value)
        .then((ref) => ApiReceiptModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiReceiptModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ApiReceiptModelDocumentReference
    extends FirestoreDocumentReference<ApiReceiptModelDocumentSnapshot> {
  factory ApiReceiptModelDocumentReference(
          DocumentReference<ApiReceiptModel> reference) =
      _$ApiReceiptModelDocumentReference;

  DocumentReference<ApiReceiptModel> get reference;

  /// A reference to the [ApiReceiptModelCollectionReference] containing this document.
  ApiReceiptModelCollectionReference get parent {
    return _$ApiReceiptModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiReceiptModelDocumentSnapshot> snapshots();

  @override
  Future<ApiReceiptModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String imageUrl,
    String recordId,
  });

  Future<void> set(ApiReceiptModel value);
}

class _$ApiReceiptModelDocumentReference
    extends FirestoreDocumentReference<ApiReceiptModelDocumentSnapshot>
    implements ApiReceiptModelDocumentReference {
  _$ApiReceiptModelDocumentReference(this.reference);

  @override
  final DocumentReference<ApiReceiptModel> reference;

  /// A reference to the [ApiReceiptModelCollectionReference] containing this document.
  ApiReceiptModelCollectionReference get parent {
    return _$ApiReceiptModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiReceiptModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return ApiReceiptModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<ApiReceiptModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return ApiReceiptModelDocumentSnapshot._(
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
    Object? imageUrl = _sentinel,
    Object? recordId = _sentinel,
  }) async {
    final json = {
      if (imageUrl != _sentinel) "imageUrl": imageUrl as String,
      if (recordId != _sentinel) "recordId": recordId as String,
    };

    return reference.update(json);
  }

  Future<void> set(ApiReceiptModel value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is ApiReceiptModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class ApiReceiptModelDocumentSnapshot extends FirestoreDocumentSnapshot {
  ApiReceiptModelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<ApiReceiptModel> snapshot;

  @override
  ApiReceiptModelDocumentReference get reference {
    return ApiReceiptModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ApiReceiptModel? data;
}

abstract class ApiReceiptModelQuery
    implements QueryReference<ApiReceiptModelQuerySnapshot> {
  @override
  ApiReceiptModelQuery limit(int limit);

  @override
  ApiReceiptModelQuery limitToLast(int limit);

  ApiReceiptModelQuery whereDocumentId({
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
  ApiReceiptModelQuery whereImageUrl({
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
  ApiReceiptModelQuery whereRecordId({
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

  ApiReceiptModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiReceiptModelDocumentSnapshot? startAtDocument,
    ApiReceiptModelDocumentSnapshot? endAtDocument,
    ApiReceiptModelDocumentSnapshot? endBeforeDocument,
    ApiReceiptModelDocumentSnapshot? startAfterDocument,
  });

  ApiReceiptModelQuery orderByImageUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiReceiptModelDocumentSnapshot? startAtDocument,
    ApiReceiptModelDocumentSnapshot? endAtDocument,
    ApiReceiptModelDocumentSnapshot? endBeforeDocument,
    ApiReceiptModelDocumentSnapshot? startAfterDocument,
  });

  ApiReceiptModelQuery orderByRecordId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiReceiptModelDocumentSnapshot? startAtDocument,
    ApiReceiptModelDocumentSnapshot? endAtDocument,
    ApiReceiptModelDocumentSnapshot? endBeforeDocument,
    ApiReceiptModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ApiReceiptModelQuery
    extends QueryReference<ApiReceiptModelQuerySnapshot>
    implements ApiReceiptModelQuery {
  _$ApiReceiptModelQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<ApiReceiptModel> reference;

  ApiReceiptModelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<ApiReceiptModel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return ApiReceiptModelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<ApiReceiptModelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: ApiReceiptModelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return ApiReceiptModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<ApiReceiptModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<ApiReceiptModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  ApiReceiptModelQuery limit(int limit) {
    return _$ApiReceiptModelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  ApiReceiptModelQuery limitToLast(int limit) {
    return _$ApiReceiptModelQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  ApiReceiptModelQuery whereDocumentId({
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
    return _$ApiReceiptModelQuery(
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

  ApiReceiptModelQuery whereImageUrl({
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
    return _$ApiReceiptModelQuery(
      reference.where(
        "imageUrl",
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

  ApiReceiptModelQuery whereRecordId({
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
    return _$ApiReceiptModelQuery(
      reference.where(
        "recordId",
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

  ApiReceiptModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiReceiptModelDocumentSnapshot? startAtDocument,
    ApiReceiptModelDocumentSnapshot? endAtDocument,
    ApiReceiptModelDocumentSnapshot? endBeforeDocument,
    ApiReceiptModelDocumentSnapshot? startAfterDocument,
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

    return _$ApiReceiptModelQuery(query, _collection);
  }

  ApiReceiptModelQuery orderByImageUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiReceiptModelDocumentSnapshot? startAtDocument,
    ApiReceiptModelDocumentSnapshot? endAtDocument,
    ApiReceiptModelDocumentSnapshot? endBeforeDocument,
    ApiReceiptModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("imageUrl", descending: descending);

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

    return _$ApiReceiptModelQuery(query, _collection);
  }

  ApiReceiptModelQuery orderByRecordId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiReceiptModelDocumentSnapshot? startAtDocument,
    ApiReceiptModelDocumentSnapshot? endAtDocument,
    ApiReceiptModelDocumentSnapshot? endBeforeDocument,
    ApiReceiptModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("recordId", descending: descending);

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

    return _$ApiReceiptModelQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiReceiptModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ApiReceiptModelQuerySnapshot
    extends FirestoreQuerySnapshot<ApiReceiptModelQueryDocumentSnapshot> {
  ApiReceiptModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<ApiReceiptModel> snapshot;

  @override
  final List<ApiReceiptModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ApiReceiptModelDocumentSnapshot>>
      docChanges;
}

class ApiReceiptModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot
    implements ApiReceiptModelDocumentSnapshot {
  ApiReceiptModelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<ApiReceiptModel> snapshot;

  @override
  ApiReceiptModelDocumentReference get reference {
    return ApiReceiptModelDocumentReference(snapshot.reference);
  }

  @override
  final ApiReceiptModel data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiReceiptModel _$ApiReceiptModelFromJson(Map<String, dynamic> json) =>
    ApiReceiptModel(
      imageUrl: json['imageUrl'] as String,
      recordId: json['recordId'] as String,
    );

Map<String, dynamic> _$ApiReceiptModelToJson(ApiReceiptModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'recordId': instance.recordId,
    };
