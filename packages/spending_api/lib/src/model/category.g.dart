// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

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
      firestore.collection('catogeries').withConverter(
            fromFirestore: ApiCategoryModelCollectionReference.fromFirestore,
            toFirestore: ApiCategoryModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ApiCategoryModelCollectionReference._(
    CollectionReference<ApiCategoryModel> reference,
  ) : super(reference, reference);

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

  Future<void> update({
    String title,
    double budget,
    String? imageUrl,
  });

  Future<void> set(ApiCategoryModel value);
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
    return reference.snapshots().map((snapshot) {
      return ApiCategoryModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<ApiCategoryModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return ApiCategoryModelDocumentSnapshot._(
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
    Object? budget = _sentinel,
    Object? imageUrl = _sentinel,
  }) async {
    final json = {
      if (title != _sentinel) "title": title as String,
      if (budget != _sentinel) "budget": budget as double,
      if (imageUrl != _sentinel) "imageUrl": imageUrl as String?,
    };

    return reference.update(json);
  }

  Future<void> set(ApiCategoryModel value) {
    return reference.set(value);
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

class ApiCategoryModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApiCategoryModel> {
  ApiCategoryModelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

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
  ApiCategoryModelQuery whereImageUrl({
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
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    ApiCategoryModelDocumentSnapshot? startAtDocument,
    ApiCategoryModelDocumentSnapshot? endAtDocument,
    ApiCategoryModelDocumentSnapshot? endBeforeDocument,
    ApiCategoryModelDocumentSnapshot? startAfterDocument,
  });

  ApiCategoryModelQuery orderByImageUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
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
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<ApiCategoryModel> reference;

  ApiCategoryModelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<ApiCategoryModel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return ApiCategoryModelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<ApiCategoryModelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: ApiCategoryModelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return ApiCategoryModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<ApiCategoryModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<ApiCategoryModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  ApiCategoryModelQuery limit(int limit) {
    return _$ApiCategoryModelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  ApiCategoryModelQuery limitToLast(int limit) {
    return _$ApiCategoryModelQuery(
      reference.limitToLast(limit),
      _collection,
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

    return _$ApiCategoryModelQuery(query, _collection);
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
      reference.where(
        _$ApiCategoryModelFieldMap["title"]!,
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

  ApiCategoryModelQuery whereBudget({
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
    return _$ApiCategoryModelQuery(
      reference.where(
        _$ApiCategoryModelFieldMap["budget"]!,
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

  ApiCategoryModelQuery whereImageUrl({
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
    return _$ApiCategoryModelQuery(
      reference.where(
        _$ApiCategoryModelFieldMap["imageUrl"]!,
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

    return _$ApiCategoryModelQuery(query, _collection);
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
    var query = reference.orderBy(_$ApiCategoryModelFieldMap["title"]!,
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

    return _$ApiCategoryModelQuery(query, _collection);
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
    var query = reference.orderBy(_$ApiCategoryModelFieldMap["budget"]!,
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

    return _$ApiCategoryModelQuery(query, _collection);
  }

  ApiCategoryModelQuery orderByImageUrl({
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
    var query = reference.orderBy(_$ApiCategoryModelFieldMap["imageUrl"]!,
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

    return _$ApiCategoryModelQuery(query, _collection);
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

class ApiCategoryModelQuerySnapshot extends FirestoreQuerySnapshot<
    ApiCategoryModel, ApiCategoryModelQueryDocumentSnapshot> {
  ApiCategoryModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

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
  ApiCategoryModelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<ApiCategoryModel> snapshot;

  @override
  ApiCategoryModelDocumentReference get reference {
    return ApiCategoryModelDocumentReference(snapshot.reference);
  }

  @override
  final ApiCategoryModel data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCategoryModel _$ApiCategoryModelFromJson(Map<String, dynamic> json) =>
    ApiCategoryModel(
      title: json['title'] as String,
      budget: (json['budget'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

const _$ApiCategoryModelFieldMap = <String, String>{
  'title': 'title',
  'budget': 'budget',
  'imageUrl': 'imageUrl',
};

Map<String, dynamic> _$ApiCategoryModelToJson(ApiCategoryModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'budget': instance.budget,
      'imageUrl': instance.imageUrl,
    };
