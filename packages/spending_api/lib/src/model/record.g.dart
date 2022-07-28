// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

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
abstract class ApiRecordModelCollectionReference
    implements
        ApiRecordModelQuery,
        FirestoreCollectionReference<ApiRecordModelQuerySnapshot> {
  factory ApiRecordModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ApiRecordModelCollectionReference;

  static ApiRecordModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ApiRecordModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ApiRecordModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  ApiRecordModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ApiRecordModelDocumentReference> add(ApiRecordModel value);
}

class _$ApiRecordModelCollectionReference extends _$ApiRecordModelQuery
    implements ApiRecordModelCollectionReference {
  factory _$ApiRecordModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ApiRecordModelCollectionReference._(
      firestore.collection('records').withConverter(
            fromFirestore: ApiRecordModelCollectionReference.fromFirestore,
            toFirestore: ApiRecordModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ApiRecordModelCollectionReference._(
    CollectionReference<ApiRecordModel> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<ApiRecordModel> get reference =>
      super.reference as CollectionReference<ApiRecordModel>;

  @override
  ApiRecordModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ApiRecordModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ApiRecordModelDocumentReference> add(ApiRecordModel value) {
    return reference
        .add(value)
        .then((ref) => ApiRecordModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiRecordModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ApiRecordModelDocumentReference
    extends FirestoreDocumentReference<ApiRecordModelDocumentSnapshot> {
  factory ApiRecordModelDocumentReference(
          DocumentReference<ApiRecordModel> reference) =
      _$ApiRecordModelDocumentReference;

  DocumentReference<ApiRecordModel> get reference;

  /// A reference to the [ApiRecordModelCollectionReference] containing this document.
  ApiRecordModelCollectionReference get parent {
    return _$ApiRecordModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiRecordModelDocumentSnapshot> snapshots();

  @override
  Future<ApiRecordModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    double amount,
    String currencyId,
    String categoryId,
    List<String> personIds,
    List<String> receiptIds,
    String remarks,
  });

  Future<void> set(ApiRecordModel value);
}

class _$ApiRecordModelDocumentReference
    extends FirestoreDocumentReference<ApiRecordModelDocumentSnapshot>
    implements ApiRecordModelDocumentReference {
  _$ApiRecordModelDocumentReference(this.reference);

  @override
  final DocumentReference<ApiRecordModel> reference;

  /// A reference to the [ApiRecordModelCollectionReference] containing this document.
  ApiRecordModelCollectionReference get parent {
    return _$ApiRecordModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiRecordModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return ApiRecordModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<ApiRecordModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return ApiRecordModelDocumentSnapshot._(
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
    Object? amount = _sentinel,
    Object? currencyId = _sentinel,
    Object? categoryId = _sentinel,
    Object? personIds = _sentinel,
    Object? receiptIds = _sentinel,
    Object? remarks = _sentinel,
  }) async {
    final json = {
      if (amount != _sentinel) "amount": amount as double,
      if (currencyId != _sentinel) "currencyId": currencyId as String,
      if (categoryId != _sentinel) "categoryId": categoryId as String,
      if (personIds != _sentinel) "personIds": personIds as List<String>,
      if (receiptIds != _sentinel) "receiptIds": receiptIds as List<String>,
      if (remarks != _sentinel) "remarks": remarks as String,
    };

    return reference.update(json);
  }

  Future<void> set(ApiRecordModel value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is ApiRecordModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class ApiRecordModelDocumentSnapshot extends FirestoreDocumentSnapshot {
  ApiRecordModelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<ApiRecordModel> snapshot;

  @override
  ApiRecordModelDocumentReference get reference {
    return ApiRecordModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ApiRecordModel? data;
}

abstract class ApiRecordModelQuery
    implements QueryReference<ApiRecordModelQuerySnapshot> {
  @override
  ApiRecordModelQuery limit(int limit);

  @override
  ApiRecordModelQuery limitToLast(int limit);

  ApiRecordModelQuery whereDocumentId({
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
  ApiRecordModelQuery whereAmount({
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
  ApiRecordModelQuery whereCurrencyId({
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
  ApiRecordModelQuery whereCategoryId({
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
  ApiRecordModelQuery wherePersonIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? arrayContainsAny,
  });
  ApiRecordModelQuery whereReceiptIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? arrayContainsAny,
  });
  ApiRecordModelQuery whereRemarks({
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

  ApiRecordModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });

  ApiRecordModelQuery orderByAmount({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });

  ApiRecordModelQuery orderByCurrencyId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });

  ApiRecordModelQuery orderByCategoryId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });

  ApiRecordModelQuery orderByPersonIds({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });

  ApiRecordModelQuery orderByReceiptIds({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });

  ApiRecordModelQuery orderByRemarks({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ApiRecordModelQuery extends QueryReference<ApiRecordModelQuerySnapshot>
    implements ApiRecordModelQuery {
  _$ApiRecordModelQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<ApiRecordModel> reference;

  ApiRecordModelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<ApiRecordModel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return ApiRecordModelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<ApiRecordModelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: ApiRecordModelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return ApiRecordModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<ApiRecordModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<ApiRecordModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  ApiRecordModelQuery limit(int limit) {
    return _$ApiRecordModelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  ApiRecordModelQuery limitToLast(int limit) {
    return _$ApiRecordModelQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  ApiRecordModelQuery whereDocumentId({
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
    return _$ApiRecordModelQuery(
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

  ApiRecordModelQuery whereAmount({
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
    return _$ApiRecordModelQuery(
      reference.where(
        "amount",
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

  ApiRecordModelQuery whereCurrencyId({
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
    return _$ApiRecordModelQuery(
      reference.where(
        "currencyId",
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

  ApiRecordModelQuery whereCategoryId({
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
    return _$ApiRecordModelQuery(
      reference.where(
        "categoryId",
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

  ApiRecordModelQuery wherePersonIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? arrayContainsAny,
  }) {
    return _$ApiRecordModelQuery(
      reference.where(
        "personIds",
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

  ApiRecordModelQuery whereReceiptIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? arrayContainsAny,
  }) {
    return _$ApiRecordModelQuery(
      reference.where(
        "receiptIds",
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

  ApiRecordModelQuery whereRemarks({
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
    return _$ApiRecordModelQuery(
      reference.where(
        "remarks",
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

  ApiRecordModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("amount", descending: descending);

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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByCurrencyId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("currencyId", descending: descending);

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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByCategoryId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("categoryId", descending: descending);

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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByPersonIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("personIds", descending: descending);

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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByReceiptIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("receiptIds", descending: descending);

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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByRemarks({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("remarks", descending: descending);

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

    return _$ApiRecordModelQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiRecordModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ApiRecordModelQuerySnapshot
    extends FirestoreQuerySnapshot<ApiRecordModelQueryDocumentSnapshot> {
  ApiRecordModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<ApiRecordModel> snapshot;

  @override
  final List<ApiRecordModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ApiRecordModelDocumentSnapshot>>
      docChanges;
}

class ApiRecordModelQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements ApiRecordModelDocumentSnapshot {
  ApiRecordModelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<ApiRecordModel> snapshot;

  @override
  ApiRecordModelDocumentReference get reference {
    return ApiRecordModelDocumentReference(snapshot.reference);
  }

  @override
  final ApiRecordModel data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiRecordModel _$ApiRecordModelFromJson(Map<String, dynamic> json) =>
    ApiRecordModel(
      amount: (json['amount'] as num).toDouble(),
      currencyId: json['currencyId'] as String,
      categoryId: json['categoryId'] as String,
      personIds:
          (json['personIds'] as List<dynamic>).map((e) => e as String).toList(),
      receiptIds: (json['receiptIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      remarks: json['remarks'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$ApiRecordModelToJson(ApiRecordModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyId': instance.currencyId,
      'categoryId': instance.categoryId,
      'personIds': instance.personIds,
      'receiptIds': instance.receiptIds,
      'remarks': instance.remarks,
      'dateTime': instance.dateTime.toIso8601String(),
    };
