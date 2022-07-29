// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

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
abstract class ApiCurrencyModelCollectionReference
    implements
        ApiCurrencyModelQuery,
        FirestoreCollectionReference<ApiCurrencyModel,
            ApiCurrencyModelQuerySnapshot> {
  factory ApiCurrencyModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ApiCurrencyModelCollectionReference;

  static ApiCurrencyModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ApiCurrencyModelFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ApiCurrencyModel value,
    SetOptions? options,
  ) {
    return _$ApiCurrencyModelToJson(value);
  }

  @override
  CollectionReference<ApiCurrencyModel> get reference;

  @override
  ApiCurrencyModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ApiCurrencyModelDocumentReference> add(ApiCurrencyModel value);
}

class _$ApiCurrencyModelCollectionReference extends _$ApiCurrencyModelQuery
    implements ApiCurrencyModelCollectionReference {
  factory _$ApiCurrencyModelCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ApiCurrencyModelCollectionReference._(
      firestore.collection('currencies').withConverter(
            fromFirestore: ApiCurrencyModelCollectionReference.fromFirestore,
            toFirestore: ApiCurrencyModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ApiCurrencyModelCollectionReference._(
    CollectionReference<ApiCurrencyModel> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<ApiCurrencyModel> get reference =>
      super.reference as CollectionReference<ApiCurrencyModel>;

  @override
  ApiCurrencyModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ApiCurrencyModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ApiCurrencyModelDocumentReference> add(ApiCurrencyModel value) {
    return reference
        .add(value)
        .then((ref) => ApiCurrencyModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiCurrencyModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ApiCurrencyModelDocumentReference
    extends FirestoreDocumentReference<ApiCurrencyModel,
        ApiCurrencyModelDocumentSnapshot> {
  factory ApiCurrencyModelDocumentReference(
          DocumentReference<ApiCurrencyModel> reference) =
      _$ApiCurrencyModelDocumentReference;

  DocumentReference<ApiCurrencyModel> get reference;

  /// A reference to the [ApiCurrencyModelCollectionReference] containing this document.
  ApiCurrencyModelCollectionReference get parent {
    return _$ApiCurrencyModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiCurrencyModelDocumentSnapshot> snapshots();

  @override
  Future<ApiCurrencyModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    double rate,
    String title,
    String flag,
    List<String> recordIds,
  });

  Future<void> set(ApiCurrencyModel value);
}

class _$ApiCurrencyModelDocumentReference extends FirestoreDocumentReference<
        ApiCurrencyModel, ApiCurrencyModelDocumentSnapshot>
    implements ApiCurrencyModelDocumentReference {
  _$ApiCurrencyModelDocumentReference(this.reference);

  @override
  final DocumentReference<ApiCurrencyModel> reference;

  /// A reference to the [ApiCurrencyModelCollectionReference] containing this document.
  ApiCurrencyModelCollectionReference get parent {
    return _$ApiCurrencyModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiCurrencyModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return ApiCurrencyModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<ApiCurrencyModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return ApiCurrencyModelDocumentSnapshot._(
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
    Object? rate = _sentinel,
    Object? title = _sentinel,
    Object? flag = _sentinel,
    Object? recordIds = _sentinel,
  }) async {
    final json = {
      if (rate != _sentinel) "rate": rate as double,
      if (title != _sentinel) "title": title as String,
      if (flag != _sentinel) "flag": flag as String,
      if (recordIds != _sentinel) "recordIds": recordIds as List<String>,
    };

    return reference.update(json);
  }

  Future<void> set(ApiCurrencyModel value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is ApiCurrencyModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class ApiCurrencyModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApiCurrencyModel> {
  ApiCurrencyModelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<ApiCurrencyModel> snapshot;

  @override
  ApiCurrencyModelDocumentReference get reference {
    return ApiCurrencyModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ApiCurrencyModel? data;
}

abstract class ApiCurrencyModelQuery
    implements QueryReference<ApiCurrencyModel, ApiCurrencyModelQuerySnapshot> {
  @override
  ApiCurrencyModelQuery limit(int limit);

  @override
  ApiCurrencyModelQuery limitToLast(int limit);

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
  ApiCurrencyModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
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
  ApiCurrencyModelQuery whereFieldPath(
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

  ApiCurrencyModelQuery whereDocumentId({
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
  ApiCurrencyModelQuery whereRate({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  });
  ApiCurrencyModelQuery whereTitle({
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
  ApiCurrencyModelQuery whereFlag({
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
  ApiCurrencyModelQuery whereRecordIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });

  ApiCurrencyModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  });

  ApiCurrencyModelQuery orderByRate({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  });

  ApiCurrencyModelQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  });

  ApiCurrencyModelQuery orderByFlag({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  });

  ApiCurrencyModelQuery orderByRecordIds({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ApiCurrencyModelQuery
    extends QueryReference<ApiCurrencyModel, ApiCurrencyModelQuerySnapshot>
    implements ApiCurrencyModelQuery {
  _$ApiCurrencyModelQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<ApiCurrencyModel> reference;

  ApiCurrencyModelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<ApiCurrencyModel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return ApiCurrencyModelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<ApiCurrencyModelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: ApiCurrencyModelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return ApiCurrencyModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<ApiCurrencyModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<ApiCurrencyModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  ApiCurrencyModelQuery limit(int limit) {
    return _$ApiCurrencyModelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  ApiCurrencyModelQuery limitToLast(int limit) {
    return _$ApiCurrencyModelQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  ApiCurrencyModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
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

    return _$ApiCurrencyModelQuery(query, _collection);
  }

  ApiCurrencyModelQuery whereFieldPath(
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
    return _$ApiCurrencyModelQuery(
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

  ApiCurrencyModelQuery whereDocumentId({
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
    return _$ApiCurrencyModelQuery(
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

  ApiCurrencyModelQuery whereRate({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  }) {
    return _$ApiCurrencyModelQuery(
      reference.where(
        _$ApiCurrencyModelFieldMap["rate"]!,
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

  ApiCurrencyModelQuery whereTitle({
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
    return _$ApiCurrencyModelQuery(
      reference.where(
        _$ApiCurrencyModelFieldMap["title"]!,
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

  ApiCurrencyModelQuery whereFlag({
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
    return _$ApiCurrencyModelQuery(
      reference.where(
        _$ApiCurrencyModelFieldMap["flag"]!,
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

  ApiCurrencyModelQuery whereRecordIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$ApiCurrencyModelQuery(
      reference.where(
        _$ApiCurrencyModelFieldMap["recordIds"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
      ),
      _collection,
    );
  }

  ApiCurrencyModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
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

    return _$ApiCurrencyModelQuery(query, _collection);
  }

  ApiCurrencyModelQuery orderByRate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$ApiCurrencyModelFieldMap["rate"]!,
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

    return _$ApiCurrencyModelQuery(query, _collection);
  }

  ApiCurrencyModelQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$ApiCurrencyModelFieldMap["title"]!,
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

    return _$ApiCurrencyModelQuery(query, _collection);
  }

  ApiCurrencyModelQuery orderByFlag({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$ApiCurrencyModelFieldMap["flag"]!,
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

    return _$ApiCurrencyModelQuery(query, _collection);
  }

  ApiCurrencyModelQuery orderByRecordIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$ApiCurrencyModelFieldMap["recordIds"]!,
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

    return _$ApiCurrencyModelQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiCurrencyModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ApiCurrencyModelQuerySnapshot extends FirestoreQuerySnapshot<
    ApiCurrencyModel, ApiCurrencyModelQueryDocumentSnapshot> {
  ApiCurrencyModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<ApiCurrencyModel> snapshot;

  @override
  final List<ApiCurrencyModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ApiCurrencyModelDocumentSnapshot>>
      docChanges;
}

class ApiCurrencyModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ApiCurrencyModel>
    implements ApiCurrencyModelDocumentSnapshot {
  ApiCurrencyModelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<ApiCurrencyModel> snapshot;

  @override
  ApiCurrencyModelDocumentReference get reference {
    return ApiCurrencyModelDocumentReference(snapshot.reference);
  }

  @override
  final ApiCurrencyModel data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCurrencyModel _$ApiCurrencyModelFromJson(Map<String, dynamic> json) =>
    ApiCurrencyModel(
      rate: (json['rate'] as num).toDouble(),
      title: json['title'] as String,
      flag: json['flag'] as String,
      recordIds:
          (json['recordIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

const _$ApiCurrencyModelFieldMap = <String, String>{
  'rate': 'rate',
  'title': 'title',
  'flag': 'flag',
  'recordIds': 'recordIds',
};

Map<String, dynamic> _$ApiCurrencyModelToJson(ApiCurrencyModel instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'title': instance.title,
      'flag': instance.flag,
      'recordIds': instance.recordIds,
    };
