// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

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
  ) : super(reference, $referenceWithoutCursor: reference);

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

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num rate,
    FieldValue rateFieldValue,
    String title,
    FieldValue titleFieldValue,
    String flag,
    FieldValue flagFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    bool main,
    FieldValue mainFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num rate,
    FieldValue rateFieldValue,
    String title,
    FieldValue titleFieldValue,
    String flag,
    FieldValue flagFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    bool main,
    FieldValue mainFieldValue,
  });
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
    return reference.snapshots().map(ApiCurrencyModelDocumentSnapshot._);
  }

  @override
  Future<ApiCurrencyModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ApiCurrencyModelDocumentSnapshot._);
  }

  @override
  Future<ApiCurrencyModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ApiCurrencyModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? rate = _sentinel,
    FieldValue? rateFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? flag = _sentinel,
    FieldValue? flagFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? main = _sentinel,
    FieldValue? mainFieldValue,
  }) async {
    assert(
      rate == _sentinel || rateFieldValue == null,
      "Cannot specify both rate and rateFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      flag == _sentinel || flagFieldValue == null,
      "Cannot specify both flag and flagFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      main == _sentinel || mainFieldValue == null,
      "Cannot specify both main and mainFieldValue",
    );
    final json = {
      if (rate != _sentinel) 'rate': rate as num,
      if (rateFieldValue != null) 'rate': rateFieldValue,
      if (title != _sentinel) 'title': title as String,
      if (titleFieldValue != null) 'title': titleFieldValue,
      if (flag != _sentinel) 'flag': flag as String,
      if (flagFieldValue != null) 'flag': flagFieldValue,
      if (updatedAt != _sentinel) 'updatedAt': updatedAt as DateTime,
      if (updatedAtFieldValue != null) 'updatedAt': updatedAtFieldValue,
      if (main != _sentinel) 'main': main as bool,
      if (mainFieldValue != null) 'main': mainFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? rate = _sentinel,
    FieldValue? rateFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? flag = _sentinel,
    FieldValue? flagFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? main = _sentinel,
    FieldValue? mainFieldValue,
  }) {
    assert(
      rate == _sentinel || rateFieldValue == null,
      "Cannot specify both rate and rateFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      flag == _sentinel || flagFieldValue == null,
      "Cannot specify both flag and flagFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      main == _sentinel || mainFieldValue == null,
      "Cannot specify both main and mainFieldValue",
    );
    final json = {
      if (rate != _sentinel) 'rate': rate as num,
      if (rateFieldValue != null) 'rate': rateFieldValue,
      if (title != _sentinel) 'title': title as String,
      if (titleFieldValue != null) 'title': titleFieldValue,
      if (flag != _sentinel) 'flag': flag as String,
      if (flagFieldValue != null) 'flag': flagFieldValue,
      if (updatedAt != _sentinel) 'updatedAt': updatedAt as DateTime,
      if (updatedAtFieldValue != null) 'updatedAt': updatedAtFieldValue,
      if (main != _sentinel) 'main': main as bool,
      if (mainFieldValue != null) 'main': mainFieldValue,
    };

    transaction.update(reference, json);
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
  ApiCurrencyModelQuery whereUpdatedAt({
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
  ApiCurrencyModelQuery whereMain({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
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
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
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

  ApiCurrencyModelQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ApiCurrencyModelDocumentSnapshot? startAtDocument,
    ApiCurrencyModelDocumentSnapshot? endAtDocument,
    ApiCurrencyModelDocumentSnapshot? endBeforeDocument,
    ApiCurrencyModelDocumentSnapshot? startAfterDocument,
  });

  ApiCurrencyModelQuery orderByMain({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
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
    this._collection, {
    required Query<ApiCurrencyModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ApiCurrencyModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ApiCurrencyModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ApiCurrencyModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ApiCurrencyModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ApiCurrencyModelQuery limit(int limit) {
    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApiCurrencyModelQuery limitToLast(int limit) {
    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
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
    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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

  ApiCurrencyModelQuery whereRate({
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
    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiCurrencyModelFieldMap['rate']!,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiCurrencyModelFieldMap['title']!,
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
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiCurrencyModelFieldMap['flag']!,
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

  ApiCurrencyModelQuery whereUpdatedAt({
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
    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiCurrencyModelFieldMap['updatedAt']!,
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

  ApiCurrencyModelQuery whereMain({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiCurrencyModelFieldMap['main']!,
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

    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor
        .orderBy(_$ApiCurrencyModelFieldMap['rate']!, descending: descending);
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

    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor
        .orderBy(_$ApiCurrencyModelFieldMap['title']!, descending: descending);
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

    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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
    final query = $referenceWithoutCursor
        .orderBy(_$ApiCurrencyModelFieldMap['flag']!, descending: descending);
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

    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ApiCurrencyModelQuery orderByUpdatedAt({
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
    final query = $referenceWithoutCursor.orderBy(
        _$ApiCurrencyModelFieldMap['updatedAt']!,
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

    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ApiCurrencyModelQuery orderByMain({
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
    final query = $referenceWithoutCursor
        .orderBy(_$ApiCurrencyModelFieldMap['main']!, descending: descending);
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

    return _$ApiCurrencyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
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

class ApiCurrencyModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApiCurrencyModel> {
  ApiCurrencyModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

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

class ApiCurrencyModelQuerySnapshot extends FirestoreQuerySnapshot<
    ApiCurrencyModel, ApiCurrencyModelQueryDocumentSnapshot> {
  ApiCurrencyModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ApiCurrencyModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ApiCurrencyModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ApiCurrencyModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ApiCurrencyModelDocumentSnapshot._,
      );
    }).toList();

    return ApiCurrencyModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ApiCurrencyModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ApiCurrencyModelDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ApiCurrencyModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

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
  ApiCurrencyModelQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ApiCurrencyModel> snapshot;

  @override
  final ApiCurrencyModel data;

  @override
  ApiCurrencyModelDocumentReference get reference {
    return ApiCurrencyModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCurrencyModel _$ApiCurrencyModelFromJson(Map<String, dynamic> json) =>
    ApiCurrencyModel(
      rate: json['rate'] as num,
      title: json['title'] as String,
      flag: json['flag'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      main: json['main'] as bool? ?? false,
    );

const _$ApiCurrencyModelFieldMap = <String, String>{
  'rate': 'rate',
  'title': 'title',
  'flag': 'flag',
  'updatedAt': 'updatedAt',
  'main': 'main',
};

Map<String, dynamic> _$ApiCurrencyModelToJson(ApiCurrencyModel instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'title': instance.title,
      'flag': instance.flag,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'main': instance.main,
    };
