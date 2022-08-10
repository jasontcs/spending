import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:spending_api/spending_api.dart';
import 'dart:developer' as developer;
import 'package:logging/logging.dart';

class FirebaseSpendingApi implements SpendingApi {
  final FirebaseFirestore? _firestore;
  final FirebaseStorage? _storage;

  FirebaseSpendingApi({FirebaseFirestore? firestore, FirebaseStorage? storage})
      : _firestore = firestore,
        _storage = storage;

  @override
  Stream<List<ApiCategoryModel>> get categoriesStream =>
      categoriesRef(_firestore)
          .snapshots()
          .map((event) => event.docs.map((e) => e.data).toList())
        ..listen((event) {
          _logInfo('categoriesStream', event);
        });

  @override
  Stream<List<ApiCurrencyModel>> get currenciesStream =>
      currenciesRef(_firestore)
          .snapshots()
          .map((event) => event.docs.map((e) => e.data).toList())
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
      .map((event) => event.docs.map((e) => e.data).toList())
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
    return currenciesRef(_firestore).add(currency).then((value) {
      _logInfo('addCurrency', value.id);
      return value.id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> addRecord(ApiRecordModel record) {
    return recordsRef(_firestore).add(record).then((value) {
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
  Future<String> editCategory(String title, ApiCategoryModel category) async {
    if (title != category.title) {
      for (var record in await getRecords(categoryTitle: title)) {
        await editRecord(
          record.id!,
          record.copyWith(categoryTitle: category.title),
        );
      }
    }

    final snapshot =
        await categoriesRef(_firestore).whereTitle(isEqualTo: title).get();
    final id = snapshot.docs.single.id;
    return categoriesRef(_firestore).doc(id).set(category).then((value) {
      _logInfo('editCategory', category);
      return id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> editCurrency(String title, ApiCurrencyModel currency) async {
    if (title != currency.title) {
      for (var record in await getRecords(currencyTitle: title)) {
        await editRecord(
          record.id!,
          record.copyWith(categoryTitle: currency.title),
        );
      }
    }
    final snapshot =
        await currenciesRef(_firestore).whereTitle(isEqualTo: title).get();
    final id = snapshot.docs.single.id;
    return currenciesRef(_firestore).doc(id).set(currency).then((value) {
      _logInfo('editCurrency', currency);
      return id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> editRecord(String id, ApiRecordModel record) {
    return recordsRef(_firestore).doc(id).set(record).then((value) {
      _logInfo('editRecord', record);
      return id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<String> editPerson(String title, ApiPersonModel person) async {
    if (title != person.title) {
      for (var record in await getRecords(personTitle: title)) {
        await editRecord(
          record.id!,
          record.copyWith(personTitle: person.title),
        );
      }
    }
    final snapshot =
        await peopleRef(_firestore).whereTitle(isEqualTo: title).get();
    final id = snapshot.docs.single.id;
    return peopleRef(_firestore).doc(id).set(person).then((value) {
      _logInfo('editPerson', person);
      return id;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<List<ApiCategoryModel>> getCategories({String? recordId}) async {
    String? categoryTitle;
    if (recordId != null) {
      categoryTitle = await recordsRef(_firestore)
          .doc(recordId)
          .get()
          .then((value) => value.data?.categoryTitle);
      if (categoryTitle == null) throw SpendingApiNotFound();
    }
    return categoriesRef(_firestore)
        .whereTitle(isEqualTo: categoryTitle)
        .get()
        .then((value) {
      final datas = value.docs.map((e) => e.data).toList();
      _logInfo('getCategories', datas);
      return datas;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<List<ApiCurrencyModel>> getCurrencies({String? recordId}) async {
    String? currencyTitle;
    if (recordId != null) {
      currencyTitle = await recordsRef(_firestore)
          .doc(recordId)
          .get()
          .then((value) => value.data?.currencyTitle);
      if (currencyTitle == null) throw SpendingApiNotFound();
    }
    return currenciesRef(_firestore)
        .whereTitle(isEqualTo: currencyTitle)
        .get()
        .then((value) {
      final datas = value.docs.map((e) => e.data).toList();
      _logInfo('getCurrencies', datas);
      return datas;
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<List<ApiRecordModel>> getRecords({
    String? categoryTitle,
    String? currencyTitle,
    String? personTitle,
    DateTime? from,
    DateTime? to,
  }) {
    return recordsRef(_firestore)
        .whereCategoryTitle(isEqualTo: categoryTitle)
        .whereCurrencyTitle(isEqualTo: currencyTitle)
        .wherePersonTitle(isEqualTo: personTitle)
        .whereDateTime(isGreaterThanOrEqualTo: from, isLessThanOrEqualTo: to)
        .get()
        .then((value) {
      final datas = value.docs.map((e) => e.data.copyWith(id: e.id)).toList();
      _logInfo('getRecords', datas);
      return datas;
    });
  }

  @override
  Future<void> removeCategory(String title) async {
    final ref = await getRecords(categoryTitle: title);
    if (ref.isNotEmpty) {
      throw SpendingApiNotAllow();
    }
    final snapshot =
        await categoriesRef(_firestore).whereTitle(isEqualTo: title).get();
    return categoriesRef(_firestore)
        .doc(snapshot.docs.single.id)
        .delete()
        .then((_) {
      _logInfo('removeCategory', title);
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<void> removeCurrency(String title) async {
    final ref = await getRecords(currencyTitle: title);
    if (ref.isNotEmpty) {
      throw SpendingApiNotAllow();
    }
    final snapshot =
        await currenciesRef(_firestore).whereTitle(isEqualTo: title).get();
    return currenciesRef(_firestore)
        .doc(snapshot.docs.single.id)
        .delete()
        .then((_) {
      _logInfo('removeCurrency', title);
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<void> removeRecord(String id) {
    return recordsRef(_firestore).doc(id).delete().then((_) {
      _logInfo('removeRecord', id);
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<void> removePerson(String title) async {
    final ref = await getRecords(personTitle: title);
    if (ref.isNotEmpty) {
      throw SpendingApiNotAllow();
    }
    final snapshot =
        await peopleRef(_firestore).whereTitle(isEqualTo: title).get();
    return peopleRef(_firestore)
        .doc(snapshot.docs.single.id)
        .delete()
        .then((_) {
      _logInfo('removePerson', title);
    }).onError((error, stackTrace) => throw SpendingApiFail());
  }

  @override
  Future<ApiCategoryModel> getCategory(String title) {
    return categoriesRef(_firestore)
        .whereTitle(isEqualTo: title)
        .get()
        .then((value) {
      _logInfo('getCategory', title);
      return value.docs.single.data;
    }).onError((error, stackTrace) => throw SpendingApiNotFound());
  }

  @override
  Future<ApiCurrencyModel> getCurrency(String title) {
    return currenciesRef(_firestore)
        .whereTitle(isEqualTo: title)
        .get()
        .then((value) {
      _logInfo('getCurrency', title);
      return value.docs.single.data;
    }).onError((error, stackTrace) => throw SpendingApiNotFound());
  }

  @override
  Future<ApiRecordModel> getRecord(String id) {
    return recordsRef(_firestore).doc(id).get().then((value) {
      _logInfo('getRecord', id);
      return value.data!;
    }).onError((error, stackTrace) => throw SpendingApiNotFound());
  }

  @override
  Future<ApiPersonModel> getPerson(String title) {
    return peopleRef(_firestore)
        .whereTitle(isEqualTo: title)
        .get()
        .then((value) {
      _logInfo('getPerson', title);
      return value.docs.single.data;
    }).onError((error, stackTrace) => throw SpendingApiNotFound());
  }

  @override
  Future<String> uploadImage({
    required File file,
    required String id,
    required String type,
  }) async {
    try {
      final storageRef = _storage?.ref() ?? FirebaseStorage.instance.ref();
      final imageRef = storageRef.child(type).child(id).child(file.path);
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
