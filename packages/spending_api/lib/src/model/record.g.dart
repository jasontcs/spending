// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

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
  ) : super(reference, $referenceWithoutCursor: reference);

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

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num amount,
    FieldValue amountFieldValue,
    String currencyId,
    FieldValue currencyIdFieldValue,
    String categoryId,
    FieldValue categoryIdFieldValue,
    String personId,
    FieldValue personIdFieldValue,
    List<String> receiptsPath,
    FieldValue receiptsPathFieldValue,
    String remarks,
    FieldValue remarksFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num amount,
    FieldValue amountFieldValue,
    String currencyId,
    FieldValue currencyIdFieldValue,
    String categoryId,
    FieldValue categoryIdFieldValue,
    String personId,
    FieldValue personIdFieldValue,
    List<String> receiptsPath,
    FieldValue receiptsPathFieldValue,
    String remarks,
    FieldValue remarksFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
  });
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
    return reference.snapshots().map(ApiRecordModelDocumentSnapshot._);
  }

  @override
  Future<ApiRecordModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ApiRecordModelDocumentSnapshot._);
  }

  @override
  Future<ApiRecordModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ApiRecordModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? currencyId = _sentinel,
    FieldValue? currencyIdFieldValue,
    Object? categoryId = _sentinel,
    FieldValue? categoryIdFieldValue,
    Object? personId = _sentinel,
    FieldValue? personIdFieldValue,
    Object? receiptsPath = _sentinel,
    FieldValue? receiptsPathFieldValue,
    Object? remarks = _sentinel,
    FieldValue? remarksFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) async {
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      currencyId == _sentinel || currencyIdFieldValue == null,
      "Cannot specify both currencyId and currencyIdFieldValue",
    );
    assert(
      categoryId == _sentinel || categoryIdFieldValue == null,
      "Cannot specify both categoryId and categoryIdFieldValue",
    );
    assert(
      personId == _sentinel || personIdFieldValue == null,
      "Cannot specify both personId and personIdFieldValue",
    );
    assert(
      receiptsPath == _sentinel || receiptsPathFieldValue == null,
      "Cannot specify both receiptsPath and receiptsPathFieldValue",
    );
    assert(
      remarks == _sentinel || remarksFieldValue == null,
      "Cannot specify both remarks and remarksFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (amount != _sentinel) 'amount': amount as num,
      if (amountFieldValue != null) 'amount': amountFieldValue,
      if (currencyId != _sentinel) 'currencyId': currencyId as String,
      if (currencyIdFieldValue != null) 'currencyId': currencyIdFieldValue,
      if (categoryId != _sentinel) 'categoryId': categoryId as String,
      if (categoryIdFieldValue != null) 'categoryId': categoryIdFieldValue,
      if (personId != _sentinel) 'personId': personId as String,
      if (personIdFieldValue != null) 'personId': personIdFieldValue,
      if (receiptsPath != _sentinel)
        'receiptsPath': receiptsPath as List<String>,
      if (receiptsPathFieldValue != null)
        'receiptsPath': receiptsPathFieldValue,
      if (remarks != _sentinel) 'remarks': remarks as String,
      if (remarksFieldValue != null) 'remarks': remarksFieldValue,
      if (dateTime != _sentinel) 'dateTime': dateTime as DateTime,
      if (dateTimeFieldValue != null) 'dateTime': dateTimeFieldValue,
      if (createdAt != _sentinel) 'createdAt': createdAt as DateTime,
      if (createdAtFieldValue != null) 'createdAt': createdAtFieldValue,
      if (updatedAt != _sentinel) 'updatedAt': updatedAt as DateTime,
      if (updatedAtFieldValue != null) 'updatedAt': updatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? currencyId = _sentinel,
    FieldValue? currencyIdFieldValue,
    Object? categoryId = _sentinel,
    FieldValue? categoryIdFieldValue,
    Object? personId = _sentinel,
    FieldValue? personIdFieldValue,
    Object? receiptsPath = _sentinel,
    FieldValue? receiptsPathFieldValue,
    Object? remarks = _sentinel,
    FieldValue? remarksFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) {
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      currencyId == _sentinel || currencyIdFieldValue == null,
      "Cannot specify both currencyId and currencyIdFieldValue",
    );
    assert(
      categoryId == _sentinel || categoryIdFieldValue == null,
      "Cannot specify both categoryId and categoryIdFieldValue",
    );
    assert(
      personId == _sentinel || personIdFieldValue == null,
      "Cannot specify both personId and personIdFieldValue",
    );
    assert(
      receiptsPath == _sentinel || receiptsPathFieldValue == null,
      "Cannot specify both receiptsPath and receiptsPathFieldValue",
    );
    assert(
      remarks == _sentinel || remarksFieldValue == null,
      "Cannot specify both remarks and remarksFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (amount != _sentinel) 'amount': amount as num,
      if (amountFieldValue != null) 'amount': amountFieldValue,
      if (currencyId != _sentinel) 'currencyId': currencyId as String,
      if (currencyIdFieldValue != null) 'currencyId': currencyIdFieldValue,
      if (categoryId != _sentinel) 'categoryId': categoryId as String,
      if (categoryIdFieldValue != null) 'categoryId': categoryIdFieldValue,
      if (personId != _sentinel) 'personId': personId as String,
      if (personIdFieldValue != null) 'personId': personIdFieldValue,
      if (receiptsPath != _sentinel)
        'receiptsPath': receiptsPath as List<String>,
      if (receiptsPathFieldValue != null)
        'receiptsPath': receiptsPathFieldValue,
      if (remarks != _sentinel) 'remarks': remarks as String,
      if (remarksFieldValue != null) 'remarks': remarksFieldValue,
      if (dateTime != _sentinel) 'dateTime': dateTime as DateTime,
      if (dateTimeFieldValue != null) 'dateTime': dateTimeFieldValue,
      if (createdAt != _sentinel) 'createdAt': createdAt as DateTime,
      if (createdAtFieldValue != null) 'createdAt': createdAtFieldValue,
      if (updatedAt != _sentinel) 'updatedAt': updatedAt as DateTime,
      if (updatedAtFieldValue != null) 'updatedAt': updatedAtFieldValue,
    };

    transaction.update(reference, json);
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
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
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
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
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
    this._collection, {
    required Query<ApiRecordModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ApiRecordModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ApiRecordModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ApiRecordModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ApiRecordModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ApiRecordModelQuery limit(int limit) {
    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApiRecordModelQuery limitToLast(int limit) {
    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
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
    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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

  ApiRecordModelQuery whereAmount({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiRecordModelFieldMap['amount']!,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiRecordModelFieldMap['currencyId']!,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiRecordModelFieldMap['categoryId']!,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiRecordModelFieldMap['personId']!,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiRecordModelFieldMap['receiptsPath']!,
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
      $queryCursor: $queryCursor,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiRecordModelFieldMap['remarks']!,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiRecordModelFieldMap['dateTime']!,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiRecordModelFieldMap['createdAt']!,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiRecordModelFieldMap['updatedAt']!,
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor
        .orderBy(_$ApiRecordModelFieldMap['amount']!, descending: descending);
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor.orderBy(
        _$ApiRecordModelFieldMap['currencyId']!,
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor.orderBy(
        _$ApiRecordModelFieldMap['categoryId']!,
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor
        .orderBy(_$ApiRecordModelFieldMap['personId']!, descending: descending);
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor.orderBy(
        _$ApiRecordModelFieldMap['receiptsPath']!,
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor
        .orderBy(_$ApiRecordModelFieldMap['remarks']!, descending: descending);
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor
        .orderBy(_$ApiRecordModelFieldMap['dateTime']!, descending: descending);
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor.orderBy(
        _$ApiRecordModelFieldMap['createdAt']!,
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor.orderBy(
        _$ApiRecordModelFieldMap['updatedAt']!,
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

    return _$ApiRecordModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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

class ApiRecordModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApiRecordModel> {
  ApiRecordModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

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

class ApiRecordModelQuerySnapshot extends FirestoreQuerySnapshot<ApiRecordModel,
    ApiRecordModelQueryDocumentSnapshot> {
  ApiRecordModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ApiRecordModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ApiRecordModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ApiRecordModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ApiRecordModelDocumentSnapshot._,
      );
    }).toList();

    return ApiRecordModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ApiRecordModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ApiRecordModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ApiRecordModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

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
  ApiRecordModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ApiRecordModel> snapshot;

  @override
  final ApiRecordModel data;

  @override
  ApiRecordModelDocumentReference get reference {
    return ApiRecordModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiRecordModel _$ApiRecordModelFromJson(Map<String, dynamic> json) =>
    ApiRecordModel(
      amount: json['amount'] as num,
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
