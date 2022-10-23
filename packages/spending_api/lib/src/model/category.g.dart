// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

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
abstract class ApiCategoryModelCollectionReference
    implements
        ApiCategoryModelQuery,
        FirestoreCollectionReference<ApiCategoryModel,
            ApiCategoryModelQuerySnapshot> {
  factory ApiCategoryModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ApiCategoryModelCollectionReference;

  static ApiCategoryModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ApiCategoryModelFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ApiCategoryModel value,
    SetOptions? options,
  ) {
    return _$ApiCategoryModelToJson(value);
  }

  @override
  CollectionReference<ApiCategoryModel> get reference;

  @override
  ApiCategoryModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ApiCategoryModelDocumentReference> add(ApiCategoryModel value);
}

class _$ApiCategoryModelCollectionReference extends _$ApiCategoryModelQuery
    implements ApiCategoryModelCollectionReference {
  factory _$ApiCategoryModelCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ApiCategoryModelCollectionReference._(
      firestore.collection('categories').withConverter(
            fromFirestore: ApiCategoryModelCollectionReference.fromFirestore,
            toFirestore: ApiCategoryModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ApiCategoryModelCollectionReference._(
    CollectionReference<ApiCategoryModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ApiCategoryModel> get reference =>
      super.reference as CollectionReference<ApiCategoryModel>;

  @override
  ApiCategoryModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ApiCategoryModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ApiCategoryModelDocumentReference> add(ApiCategoryModel value) {
    return reference
        .add(value)
        .then((ref) => ApiCategoryModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiCategoryModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ApiCategoryModelDocumentReference
    extends FirestoreDocumentReference<ApiCategoryModel,
        ApiCategoryModelDocumentSnapshot> {
  factory ApiCategoryModelDocumentReference(
          DocumentReference<ApiCategoryModel> reference) =
      _$ApiCategoryModelDocumentReference;

  DocumentReference<ApiCategoryModel> get reference;

  /// A reference to the [ApiCategoryModelCollectionReference] containing this document.
  ApiCategoryModelCollectionReference get parent {
    return _$ApiCategoryModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiCategoryModelDocumentSnapshot> snapshots();

  @override
  Future<ApiCategoryModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    num budget,
    FieldValue budgetFieldValue,
    String icon,
    FieldValue iconFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    num budget,
    FieldValue budgetFieldValue,
    String icon,
    FieldValue iconFieldValue,
  });
}

class _$ApiCategoryModelDocumentReference extends FirestoreDocumentReference<
        ApiCategoryModel, ApiCategoryModelDocumentSnapshot>
    implements ApiCategoryModelDocumentReference {
  _$ApiCategoryModelDocumentReference(this.reference);

  @override
  final DocumentReference<ApiCategoryModel> reference;

  /// A reference to the [ApiCategoryModelCollectionReference] containing this document.
  ApiCategoryModelCollectionReference get parent {
    return _$ApiCategoryModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ApiCategoryModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ApiCategoryModelDocumentSnapshot._);
  }

  @override
  Future<ApiCategoryModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ApiCategoryModelDocumentSnapshot._);
  }

  @override
  Future<ApiCategoryModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ApiCategoryModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? budget = _sentinel,
    FieldValue? budgetFieldValue,
    Object? icon = _sentinel,
    FieldValue? iconFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      budget == _sentinel || budgetFieldValue == null,
      "Cannot specify both budget and budgetFieldValue",
    );
    assert(
      icon == _sentinel || iconFieldValue == null,
      "Cannot specify both icon and iconFieldValue",
    );
    final json = {
      if (title != _sentinel) 'title': title as String,
      if (titleFieldValue != null) 'title': titleFieldValue,
      if (budget != _sentinel) 'budget': budget as num,
      if (budgetFieldValue != null) 'budget': budgetFieldValue,
      if (icon != _sentinel) 'icon': icon as String,
      if (iconFieldValue != null) 'icon': iconFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? budget = _sentinel,
    FieldValue? budgetFieldValue,
    Object? icon = _sentinel,
    FieldValue? iconFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      budget == _sentinel || budgetFieldValue == null,
      "Cannot specify both budget and budgetFieldValue",
    );
    assert(
      icon == _sentinel || iconFieldValue == null,
      "Cannot specify both icon and iconFieldValue",
    );
    final json = {
      if (title != _sentinel) 'title': title as String,
      if (titleFieldValue != null) 'title': titleFieldValue,
      if (budget != _sentinel) 'budget': budget as num,
      if (budgetFieldValue != null) 'budget': budgetFieldValue,
      if (icon != _sentinel) 'icon': icon as String,
      if (iconFieldValue != null) 'icon': iconFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ApiCategoryModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ApiCategoryModelQuery
    implements QueryReference<ApiCategoryModel, ApiCategoryModelQuerySnapshot> {
  @override
  ApiCategoryModelQuery limit(int limit);

  @override
  ApiCategoryModelQuery limitToLast(int limit);

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
  ApiCategoryModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
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
  ApiCategoryModelQuery whereFieldPath(
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

  ApiCategoryModelQuery whereDocumentId({
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
  ApiCategoryModelQuery whereTitle({
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
  ApiCategoryModelQuery whereBudget({
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
  ApiCategoryModelQuery whereIcon({
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

  ApiCategoryModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
  });

  ApiCategoryModelQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
  });

  ApiCategoryModelQuery orderByBudget({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
  });

  ApiCategoryModelQuery orderByIcon({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ApiCategoryModelQuery
    extends QueryReference<ApiCategoryModel, ApiCategoryModelQuerySnapshot>
    implements ApiCategoryModelQuery {
  _$ApiCategoryModelQuery(
    this._collection, {
    required Query<ApiCategoryModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ApiCategoryModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ApiCategoryModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ApiCategoryModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ApiCategoryModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ApiCategoryModelQuery limit(int limit) {
    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApiCategoryModelQuery limitToLast(int limit) {
    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ApiCategoryModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
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
    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ApiCategoryModelQuery whereFieldPath(
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
    return _$ApiCategoryModelQuery(
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

  ApiCategoryModelQuery whereDocumentId({
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
    return _$ApiCategoryModelQuery(
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

  ApiCategoryModelQuery whereTitle({
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
    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiCategoryModelFieldMap['title']!,
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

  ApiCategoryModelQuery whereBudget({
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
    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiCategoryModelFieldMap['budget']!,
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

  ApiCategoryModelQuery whereIcon({
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
    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApiCategoryModelFieldMap['icon']!,
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

  ApiCategoryModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
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

    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ApiCategoryModelQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApiCategoryModelFieldMap['title']!, descending: descending);
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

    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ApiCategoryModelQuery orderByBudget({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApiCategoryModelFieldMap['budget']!, descending: descending);
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

    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ApiCategoryModelQuery orderByIcon({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApiCategoryModelFieldMap['icon']!, descending: descending);
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

    return _$ApiCategoryModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApiCategoryModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ApiCategoryModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApiCategoryModel> {
  ApiCategoryModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ApiCategoryModel> snapshot;

  @override
  ApiCategoryModelDocumentReference get reference {
    return ApiCategoryModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ApiCategoryModel? data;
}

class ApiCategoryModelQuerySnapshot extends FirestoreQuerySnapshot<
    ApiCategoryModel, ApiCategoryModelQueryDocumentSnapshot> {
  ApiCategoryModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ApiCategoryModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ApiCategoryModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ApiCategoryModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ApiCategoryModelDocumentSnapshot._,
      );
    }).toList();

    return ApiCategoryModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ApiCategoryModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ApiCategoryModelDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ApiCategoryModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ApiCategoryModel> snapshot;

  @override
  final List<ApiCategoryModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ApiCategoryModelDocumentSnapshot>>
      docChanges;
}

class ApiCategoryModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ApiCategoryModel>
    implements ApiCategoryModelDocumentSnapshot {
  ApiCategoryModelQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ApiCategoryModel> snapshot;

  @override
  final ApiCategoryModel data;

  @override
  ApiCategoryModelDocumentReference get reference {
    return ApiCategoryModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCategoryModel _$ApiCategoryModelFromJson(Map<String, dynamic> json) =>
    ApiCategoryModel(
      title: json['title'] as String,
      budget: json['budget'] as num,
      icon: json['icon'] as String,
    );

const _$ApiCategoryModelFieldMap = <String, String>{
  'title': 'title',
  'budget': 'budget',
  'icon': 'icon',
};

Map<String, dynamic> _$ApiCategoryModelToJson(ApiCategoryModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'budget': instance.budget,
      'icon': instance.icon,
    };
