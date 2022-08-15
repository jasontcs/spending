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
        FirestoreCollectionReference<ApiRecordModel,
            ApiRecordModelQuerySnapshot> {
  factory ApiRecordModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ApiRecordModelCollectionReference;

  static ApiRecordModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ApiRecordModelFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ApiRecordModel value,
    SetOptions? options,
  ) {
    return _$ApiRecordModelToJson(value);
  }

  @override
  CollectionReference<ApiRecordModel> get reference;

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
    extends FirestoreDocumentReference<ApiRecordModel,
        ApiRecordModelDocumentSnapshot> {
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
    String personId,
    List<String> receiptsPath,
    String remarks,
    DateTime dateTime,
    DateTime createdAt,
    DateTime updatedAt,
  });

  Future<void> set(ApiRecordModel value);
}

class _$ApiRecordModelDocumentReference extends FirestoreDocumentReference<
    ApiRecordModel,
    ApiRecordModelDocumentSnapshot> implements ApiRecordModelDocumentReference {
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
    Object? personId = _sentinel,
    Object? receiptsPath = _sentinel,
    Object? remarks = _sentinel,
    Object? dateTime = _sentinel,
    Object? createdAt = _sentinel,
    Object? updatedAt = _sentinel,
  }) async {
    final json = {
      if (amount != _sentinel) "amount": amount as double,
      if (currencyId != _sentinel) "currencyId": currencyId as String,
      if (categoryId != _sentinel) "categoryId": categoryId as String,
      if (personId != _sentinel) "personId": personId as String,
      if (receiptsPath != _sentinel)
        "receiptsPath": receiptsPath as List<String>,
      if (remarks != _sentinel) "remarks": remarks as String,
      if (dateTime != _sentinel) "dateTime": dateTime as DateTime,
      if (createdAt != _sentinel) "createdAt": createdAt as DateTime,
      if (updatedAt != _sentinel) "updatedAt": updatedAt as DateTime,
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

class ApiRecordModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApiRecordModel> {
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
    implements QueryReference<ApiRecordModel, ApiRecordModelQuerySnapshot> {
  @override
  ApiRecordModelQuery limit(int limit);

  @override
  ApiRecordModelQuery limitToLast(int limit);

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
  ApiRecordModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
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
  ApiRecordModelQuery whereFieldPath(
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
  ApiRecordModelQuery wherePersonId({
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
  ApiRecordModelQuery whereReceiptsPath({
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
  ApiRecordModelQuery whereDateTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });
  ApiRecordModelQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });
  ApiRecordModelQuery whereUpdatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
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

  ApiRecordModelQuery orderByPersonId({
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

  ApiRecordModelQuery orderByReceiptsPath({
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

  ApiRecordModelQuery orderByDateTime({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });

  ApiRecordModelQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });

  ApiRecordModelQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ApiRecordModelDocumentSnapshot? startAtDocument,
    ApiRecordModelDocumentSnapshot? endAtDocument,
    ApiRecordModelDocumentSnapshot? endBeforeDocument,
    ApiRecordModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ApiRecordModelQuery
    extends QueryReference<ApiRecordModel, ApiRecordModelQuerySnapshot>
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

  ApiRecordModelQuery orderByFieldPath(
    FieldPath fieldPath, {
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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery whereFieldPath(
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
    return _$ApiRecordModelQuery(
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
        _$ApiRecordModelFieldMap["amount"]!,
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
        _$ApiRecordModelFieldMap["currencyId"]!,
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
        _$ApiRecordModelFieldMap["categoryId"]!,
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

  ApiRecordModelQuery wherePersonId({
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
        _$ApiRecordModelFieldMap["personId"]!,
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

  ApiRecordModelQuery whereReceiptsPath({
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
    return _$ApiRecordModelQuery(
      reference.where(
        _$ApiRecordModelFieldMap["receiptsPath"]!,
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
        _$ApiRecordModelFieldMap["remarks"]!,
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

  ApiRecordModelQuery whereDateTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$ApiRecordModelQuery(
      reference.where(
        _$ApiRecordModelFieldMap["dateTime"]!,
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

  ApiRecordModelQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$ApiRecordModelQuery(
      reference.where(
        _$ApiRecordModelFieldMap["createdAt"]!,
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

  ApiRecordModelQuery whereUpdatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$ApiRecordModelQuery(
      reference.where(
        _$ApiRecordModelFieldMap["updatedAt"]!,
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
    var query = reference.orderBy(_$ApiRecordModelFieldMap["amount"]!,
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
    var query = reference.orderBy(_$ApiRecordModelFieldMap["currencyId"]!,
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
    var query = reference.orderBy(_$ApiRecordModelFieldMap["categoryId"]!,
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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByPersonId({
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
    var query = reference.orderBy(_$ApiRecordModelFieldMap["personId"]!,
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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByReceiptsPath({
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
    var query = reference.orderBy(_$ApiRecordModelFieldMap["receiptsPath"]!,
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
    var query = reference.orderBy(_$ApiRecordModelFieldMap["remarks"]!,
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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByDateTime({
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
    var query = reference.orderBy(_$ApiRecordModelFieldMap["dateTime"]!,
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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByCreatedAt({
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
    var query = reference.orderBy(_$ApiRecordModelFieldMap["createdAt"]!,
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

    return _$ApiRecordModelQuery(query, _collection);
  }

  ApiRecordModelQuery orderByUpdatedAt({
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
    var query = reference.orderBy(_$ApiRecordModelFieldMap["updatedAt"]!,
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

class ApiRecordModelQuerySnapshot extends FirestoreQuerySnapshot<ApiRecordModel,
    ApiRecordModelQueryDocumentSnapshot> {
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

class ApiRecordModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ApiRecordModel>
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
      personId: json['personId'] as String,
      receiptsPath: (json['receiptsPath'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      remarks: json['remarks'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

const _$ApiRecordModelFieldMap = <String, String>{
  'amount': 'amount',
  'currencyId': 'currencyId',
  'categoryId': 'categoryId',
  'personId': 'personId',
  'receiptsPath': 'receiptsPath',
  'remarks': 'remarks',
  'dateTime': 'dateTime',
  'createdAt': 'createdAt',
  'updatedAt': 'updatedAt',
};

Map<String, dynamic> _$ApiRecordModelToJson(ApiRecordModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyId': instance.currencyId,
      'categoryId': instance.categoryId,
      'personId': instance.personId,
      'receiptsPath': instance.receiptsPath,
      'remarks': instance.remarks,
      'dateTime': instance.dateTime.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
