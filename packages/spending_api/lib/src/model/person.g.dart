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
        FirestoreCollectionReference<ApiPersonModel,
            ApiPersonModelQuerySnapshot> {
  factory ApiPersonModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ApiPersonModelCollectionReference;

  static ApiPersonModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ApiPersonModelFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ApiPersonModel value,
    SetOptions? options,
  ) {
    return _$ApiPersonModelToJson(value);
  }

  @override
  CollectionReference<ApiPersonModel> get reference;

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
    extends FirestoreDocumentReference<ApiPersonModel,
        ApiPersonModelDocumentSnapshot> {
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
    String? id,
    String title,
  });

  Future<void> set(ApiPersonModel value);
}

class _$ApiPersonModelDocumentReference extends FirestoreDocumentReference<
    ApiPersonModel,
    ApiPersonModelDocumentSnapshot> implements ApiPersonModelDocumentReference {
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
    Object? id = _sentinel,
    Object? title = _sentinel,
  }) async {
    final json = {
      if (id != _sentinel) "id": id as String?,
      if (title != _sentinel) "title": title as String,
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

class ApiPersonModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApiPersonModel> {
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
    implements QueryReference<ApiPersonModel, ApiPersonModelQuerySnapshot> {
  @override
  ApiPersonModelQuery limit(int limit);

  @override
  ApiPersonModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ApiPersonModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ApiPersonModelDocumentSnapshot? startAtDocument,
    ApiPersonModelDocumentSnapshot? endAtDocument,
    ApiPersonModelDocumentSnapshot? endBeforeDocument,
    ApiPersonModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ApiPersonModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

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
  ApiPersonModelQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
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

  ApiPersonModelQuery orderById({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
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
}

class _$ApiPersonModelQuery
    extends QueryReference<ApiPersonModel, ApiPersonModelQuerySnapshot>
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

  ApiPersonModelQuery orderByFieldPath(
    FieldPath fieldPath, {
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
    var query = reference.orderBy(fieldPath, descending: descending);

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

  ApiPersonModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ApiPersonModelQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
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

  ApiPersonModelQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$ApiPersonModelQuery(
      reference.where(
        _$ApiPersonModelFieldMap["id"]!,
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
        _$ApiPersonModelFieldMap["title"]!,
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

  ApiPersonModelQuery orderById({
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
    var query = reference.orderBy(_$ApiPersonModelFieldMap["id"]!,
        descending: descending);

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
    var query = reference.orderBy(_$ApiPersonModelFieldMap["title"]!,
        descending: descending);

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

class ApiPersonModelQuerySnapshot extends FirestoreQuerySnapshot<ApiPersonModel,
    ApiPersonModelQueryDocumentSnapshot> {
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

class ApiPersonModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ApiPersonModel>
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
      id: json['id'] as String?,
      title: json['title'] as String,
    );

const _$ApiPersonModelFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
};

Map<String, dynamic> _$ApiPersonModelToJson(ApiPersonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
