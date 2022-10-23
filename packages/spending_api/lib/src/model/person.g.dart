// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

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
  ) : super(reference, $referenceWithoutCursor: reference);

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

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
  });
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
    return reference.snapshots().map(ApiPersonModelDocumentSnapshot._);
  }

  @override
  Future<ApiPersonModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ApiPersonModelDocumentSnapshot._);
  }

  @override
  Future<ApiPersonModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ApiPersonModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    final json = {
      if (title != _sentinel) 'title': title as String,
      if (titleFieldValue != null) 'title': titleFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    final json = {
      if (title != _sentinel) 'title': title as String,
      if (titleFieldValue != null) 'title': titleFieldValue,
    };

    transaction.update(reference, json);
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
    this._collection, {
    required Query<ApiPersonModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ApiPersonModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ApiPersonModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ApiPersonModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ApiPersonModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ApiPersonModelQuery limit(int limit) {
    return _$ApiPersonModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApiPersonModelQuery limitToLast(int limit) {
    return _$ApiPersonModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
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
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$ApiPersonModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
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
      $queryCursor: $queryCursor,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
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
      $queryCursor: $queryCursor,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiPersonModelFieldMap['title']!,
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
      $queryCursor: $queryCursor,
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
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ApiPersonModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor
        .orderBy(_$ApiPersonModelFieldMap['title']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ApiPersonModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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

class ApiPersonModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApiPersonModel> {
  ApiPersonModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

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

class ApiPersonModelQuerySnapshot extends FirestoreQuerySnapshot<ApiPersonModel,
    ApiPersonModelQueryDocumentSnapshot> {
  ApiPersonModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ApiPersonModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ApiPersonModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ApiPersonModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ApiPersonModelDocumentSnapshot._,
      );
    }).toList();

    return ApiPersonModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ApiPersonModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ApiPersonModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ApiPersonModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

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
  ApiPersonModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ApiPersonModel> snapshot;

  @override
  final ApiPersonModel data;

  @override
  ApiPersonModelDocumentReference get reference {
    return ApiPersonModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPersonModel _$ApiPersonModelFromJson(Map<String, dynamic> json) =>
    ApiPersonModel(
      title: json['title'] as String,
    );

const _$ApiPersonModelFieldMap = <String, String>{
  'title': 'title',
};

Map<String, dynamic> _$ApiPersonModelToJson(ApiPersonModel instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
