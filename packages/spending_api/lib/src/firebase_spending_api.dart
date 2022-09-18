import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:spending_api/spending_api.dart';
import 'dart:developer' as developer;
import 'package:logging/logging.dart';
import 'package:uuid/uuid.dart';

class FirebaseSpendingApi implements SpendingApi {
  final FirebaseFirestore? _firestore;
  final FirebaseStorage? _storage;

  FirebaseSpendingApi({FirebaseFirestore? firestore, FirebaseStorage? storage})
      : _firestore = firestore,
        _storage = storage;

  @override
  Stream<List<ApiCategoryModel>> get categoriesStream =>
      categoriesRef(_firestore).snapshots().map(
          (event) => event.docs.map((e) => e.data.copyWith(id: e.id)).toList())
        ..listen((event) {
          _logInfo('categoriesStream', event);
        });

  @override
  Stream<List<ApiCurrencyModel>> get currenciesStream =>
      currenciesRef(_firestore).snapshots().map(
          (event) => event.docs.map((e) => e.data.copyWith(id: e.id)).toList())
        ..listen((event) {
          _logInfo('currenciesStream', event);
        });

  @override
  Stream<List<ApiRecordModel>> get recordsStream => recordsRef(_firestore)
      .snapshots()
      .map((event) => event.docs.map((e) => e.data.copyWith(id: e.id)).toList())
    ..listen((event) {
      _logInfo('recordsStream', event);
    });
  @override
  Stream<List<ApiPersonModel>> get peopleStream => peopleRef(_firestore)
      .snapshots()
      .map((event) => event.docs.map((e) => e.data.copyWith(id: e.id)).toList())
    ..listen((event) {
      _logInfo('peopleStream', event);
    });

  @override
  Future<String> addCategory(ApiCategoryModel category) {
    return categoriesRef(_firestore).add(category).then((value) {
      _logInfo('addCategory', value.id);
      return value.id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> addCurrency(ApiCurrencyModel currency) {
    return currenciesRef(_firestore)
        .add(currency.copyWith(updatedAt: DateTime.now()))
        .then((value) {
      _logInfo('addCurrency', value.id);
      return value.id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> addRecord(ApiRecordModel record) {
    final now = DateTime.now();
    return recordsRef(_firestore)
        .add(record.copyWith(
      createdAt: now,
      updatedAt: now,
    ))
        .then((value) {
      _logInfo('addRecord', value.id);
      return value.id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> addPerson(ApiPersonModel person) {
    return peopleRef(_firestore).add(person).then((value) {
      _logInfo('addPerson', value.id);
      return value.id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> editCategory(String id, ApiCategoryModel category) async {
    return categoriesRef(_firestore).doc(id).set(category).then((value) {
      _logInfo('editCategory', category);
      return id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> editCurrency(String id, ApiCurrencyModel currency) async {
    return currenciesRef(_firestore)
        .doc(id)
        .set(currency.copyWith(updatedAt: DateTime.now()))
        .then((value) {
      _logInfo('editCurrency', currency);
      return id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> editRecord(String id, ApiRecordModel record) {
    return recordsRef(_firestore)
        .doc(id)
        .set(record.copyWith(updatedAt: DateTime.now()))
        .then((value) {
      _logInfo('editRecord', record);
      return id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> editPerson(String id, ApiPersonModel person) async {
    return peopleRef(_firestore).doc(id).set(person).then((value) {
      _logInfo('editPerson', person);
      return id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<List<ApiCategoryModel>> getCategories({String? recordId}) async {
    String? categoryId;
    if (recordId != null) {
      categoryId = await recordsRef(_firestore)
          .doc(recordId)
          .get()
          .then((value) => value.data?.categoryId);
      if (categoryId == null) throw SpendingApiNotFound();
    }
    return categoriesRef(_firestore)
        .whereDocumentId(isEqualTo: categoryId)
        .get()
        .then((value) {
      final datas = value.docs.map((e) => e.data.copyWith(id: e.id)).toList();
      _logInfo('getCategories', datas);
      return datas;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<List<ApiCurrencyModel>> getCurrencies({String? recordId}) async {
    String? currencyId;
    if (recordId != null) {
      currencyId = await recordsRef(_firestore)
          .doc(recordId)
          .get()
          .then((value) => value.data?.currencyId);
      if (currencyId == null) throw SpendingApiNotFound();
    }
    return currenciesRef(_firestore)
        .whereDocumentId(isEqualTo: currencyId)
        .get()
        .then((value) {
      final datas = value.docs.map((e) => e.data.copyWith(id: e.id)).toList();
      _logInfo('getCurrencies', datas);
      return datas;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<List<ApiRecordModel>> getRecords({
    String? categoryId,
    String? currencyId,
    String? personId,
    DateTime? from,
    DateTime? to,
  }) {
    return recordsRef(_firestore)
        .whereCategoryId(isEqualTo: categoryId)
        .whereCurrencyId(isEqualTo: currencyId)
        .wherePersonId(isEqualTo: personId)
        .whereDateTime(isGreaterThanOrEqualTo: from, isLessThanOrEqualTo: to)
        .get()
        .then((value) {
      final datas = value.docs.map((e) => e.data.copyWith(id: e.id)).toList();
      _logInfo('getRecords', datas);
      return datas;
    });
  }

  @override
  Future<List<ApiPersonModel>> getPeople({
    String? recordId,
  }) async {
    String? personId;
    if (recordId != null) {
      personId = await recordsRef(_firestore)
          .doc(recordId)
          .get()
          .then((value) => value.data?.personId);
      if (personId == null) throw SpendingApiNotFound();
    }
    return peopleRef(_firestore)
        .whereDocumentId(isEqualTo: personId)
        .get()
        .then((value) {
      final datas = value.docs.map((e) => e.data.copyWith(id: e.id)).toList();
      _logInfo('getPeople', datas);
      return datas;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<void> removeCategory(String id) async {
    final ref = await getRecords(categoryId: id);
    if (ref.isNotEmpty) {
      throw SpendingApiNotAllow();
    }
    return categoriesRef(_firestore).doc(id).delete().then((_) {
      _logInfo('removeCategory', id);
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<void> removeCurrency(String id) async {
    final ref = await getRecords(currencyId: id);
    if (ref.isNotEmpty) {
      throw SpendingApiNotAllow();
    }
    return currenciesRef(_firestore).doc(id).delete().then((_) {
      _logInfo('removeCurrency', id);
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<void> removeRecord(String id) {
    return recordsRef(_firestore).doc(id).delete().then((_) {
      _logInfo('removeRecord', id);
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<void> removePerson(String id) async {
    final ref = await getRecords(personId: id);
    if (ref.isNotEmpty) {
      throw SpendingApiNotAllow();
    }
    return peopleRef(_firestore).doc(id).delete().then((_) {
      _logInfo('removePerson', id);
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<ApiCategoryModel> getCategory(String id) async {
    final snapshot = await categoriesRef(_firestore).doc(id).get();
    if (snapshot.data == null) throw SpendingApiNotFound();

    _logInfo('getCategory', id);
    return snapshot.data!.copyWith(id: id);
  }

  @override
  Future<ApiCurrencyModel> getCurrency(String id) async {
    final snapshot = await currenciesRef(_firestore).doc(id).get();
    if (snapshot.data == null) throw SpendingApiNotFound();

    _logInfo('getCurrency', id);
    return snapshot.data!.copyWith(id: id);
  }

  @override
  Future<ApiRecordModel> getRecord(String id) async {
    final snapshot = await recordsRef(_firestore).doc(id).get();
    if (snapshot.data == null) throw SpendingApiNotFound();

    _logInfo('getRecord', id);
    return snapshot.data!.copyWith(id: id);
  }

  @override
  Future<ApiPersonModel> getPerson(String id) async {
    final snapshot = await peopleRef(_firestore).doc(id).get();
    if (snapshot.data == null) throw SpendingApiNotFound();

    _logInfo('getPerson', id);
    return snapshot.data!.copyWith(id: id);
  }

  @override
  Future<String> uploadImage({
    required File file,
    String? id,
    required String type,
  }) async {
    try {
      final storageRef = _storage?.ref() ?? FirebaseStorage.instance.ref();
      final imageRef = storageRef.child(type).child(id ?? const Uuid().v4());
      await imageRef.putFile(file);
      _logInfo('uploadImage', imageRef.fullPath);
      return imageRef.fullPath;
    } on FirebaseException catch (e) {
      throw SpendingApiFail(e.toString());
    }
  }

  @override
  Future<String> getImageUrl(String path) {
    final storageRef = _storage?.ref() ?? FirebaseStorage.instance.ref();
    final imageRef = storageRef.child(path);
    return imageRef.getDownloadURL();
  }

  void _logInfo(String function, Object? data) {
    developer.log(
      '$function: $data',
      name: 'API',
      level: Level.INFO.value,
    );
  }
}
