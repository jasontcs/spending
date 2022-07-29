import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:spending_api/spending_api.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class FirestoreSpendingApi implements SpendingApi {
  final FirebaseFirestore? firestore;
  final FirebaseStorage? storage;

  FirestoreSpendingApi({this.firestore, this.storage});

  @override
  Stream<List<ApiCategoryModel>> get categoriesStream =>
      catogeriesRef(firestore)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  @override
  Future<ApiCategoryModel> getCategory(String id) => catogeriesRef(firestore)
      .whereDocumentId(isEqualTo: id)
      .get()
      .then((value) => value.docs.single.data..id = id);

  @override
  Stream<List<ApiCurrencyModel>> get currenciesStream =>
      currenciesRef(firestore)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  @override
  Future<ApiCurrencyModel> getCurrency(String id) => currenciesRef(firestore)
      .whereDocumentId(isEqualTo: id)
      .get()
      .then((value) => value.docs.single.data
        ..id = id
        ..id = id);

  @override
  Stream<List<ApiPersonModel>> get peopleStream => peopleRef(firestore)
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  @override
  Future<ApiPersonModel> getPerson(String id) => peopleRef(firestore)
      .whereDocumentId(isEqualTo: id)
      .get()
      .then((value) => value.docs.single.data..id = id);

  @override
  Stream<List<ApiReceiptModel>> get receiptsStream => receiptsRef(firestore)
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  @override
  Future<ApiReceiptModel> getReceipt(String id) => receiptsRef(firestore)
      .whereDocumentId(isEqualTo: id)
      .get()
      .then((value) => value.docs.single.data..id = id);

  @override
  Stream<List<ApiRecordModel>> get recordsStream =>
      recordsRef(firestore).snapshots().map((snapshot) =>
          snapshot.docs.map((doc) => doc.data..id = doc.id).toList());

  @override
  Future<ApiRecordModel> getRecord(String id) => recordsRef(firestore)
      .whereDocumentId(isEqualTo: id)
      .get()
      .then((value) => value.docs.single.data);

  @override
  Future<String?> editCategory(String? id, ApiCategoryModel? category) {
    if (id == null && category == null) return Future.value();
    if (id == null) {
      return catogeriesRef(firestore).add(category!).then((entry) => entry.id);
    } else {
      if (category != null) {
        return catogeriesRef(firestore).doc(id).set(category).then((_) => id);
      } else {
        return catogeriesRef(firestore).doc(id).delete().then((_) => id);
      }
    }
  }

  @override
  Future<String?> editCurrency(String? id, ApiCurrencyModel? currency) {
    if (id == null && currency == null) return Future.value();
    if (id == null) {
      return currenciesRef(firestore).add(currency!).then((entry) => entry.id);
    } else {
      if (currency != null) {
        return currenciesRef(firestore).doc(id).set(currency).then((_) => id);
      } else {
        return currenciesRef(firestore).doc(id).delete().then((_) => id);
      }
    }
  }

  @override
  Future<String?> editPerson(String? id, ApiPersonModel? person) {
    if (id == null && person == null) return Future.value();
    if (id == null) {
      return peopleRef(firestore).add(person!).then((entry) => entry.id);
    } else {
      if (person != null) {
        return peopleRef(firestore).doc(id).set(person).then((_) => id);
      } else {
        return peopleRef(firestore).doc(id).delete().then((_) => id);
      }
    }
  }

  @override
  Future<String?> editReceipt(String? id, ApiReceiptModel? receipt) {
    if (id == null && receipt == null) return Future.value();
    if (id == null) {
      return receiptsRef(firestore).add(receipt!).then((entry) => entry.id);
    } else {
      if (receipt != null) {
        return receiptsRef(firestore).doc(id).set(receipt).then((_) => id);
      } else {
        return receiptsRef(firestore).doc(id).delete().then((_) => id);
      }
    }
  }

  @override
  Future<String?> editRecord(String? id, ApiRecordModel? record) {
    if (id == null && record == null) return Future.value();
    if (id == null) {
      return recordsRef(firestore).add(record!).then((entry) => entry.id);
    } else {
      if (record != null) {
        return recordsRef(firestore).doc(id).set(record).then((_) => id);
      } else {
        return recordsRef(firestore).doc(id).delete().then((_) => id);
      }
    }
  }

  @override
  Future<List<ApiCategoryModel>> getCategories(
      {String? recordId, String? title}) {
    return catogeriesRef(firestore)
        .whereRecordIds(arrayContains: recordId)
        .whereTitle(isEqualTo: title)
        .get()
        .then((value) => value.docs.map((e) => e.data..id = e.id).toList());
  }

  @override
  Future<List<ApiCurrencyModel>> getCurrencies(
      {String? recordId, String? title}) {
    return currenciesRef(firestore)
        .whereRecordIds(arrayContains: recordId)
        .whereTitle(isEqualTo: title)
        .get()
        .then((value) => value.docs.map((e) => e.data..id = e.id).toList());
  }

  @override
  Future<List<ApiPersonModel>> getPeople({String? title, String? recordId}) {
    return peopleRef(firestore)
        .whereTitle(isEqualTo: title)
        .whereRecordIds(arrayContains: recordId)
        .get()
        .then((value) => value.docs.map((e) => e.data..id = e.id).toList());
  }

  @override
  Future<List<ApiReceiptModel>> getReceipts(
      {String? recordId, String? imageUrl}) {
    return receiptsRef(firestore)
        .whereRecordId(isEqualTo: recordId)
        .whereImageUrl(isEqualTo: imageUrl)
        .get()
        .then((value) => value.docs.map((e) => e.data..id = e.id).toList());
  }

  @override
  Future<List<ApiRecordModel>> getRecords(
      {String? categoryId, String? personId, DateTime? from, DateTime? to}) {
    return recordsRef(firestore)
        .whereCategoryId(isEqualTo: categoryId)
        .wherePersonId(isEqualTo: personId)
        .whereDateTime(isGreaterThanOrEqualTo: from, isLessThanOrEqualTo: to)
        .get()
        .then((value) => value.docs.map((e) => e.data..id = e.id).toList());
  }

  @override
  Future<String?> downloadImage(String path) async {
    final storageRef = (storage ?? FirebaseStorage.instance).ref();
    return await storageRef.child(path).getDownloadURL();
  }

  @override
  Future<String?> uploadImage({
    required File file,
    required String id,
    required String type,
  }) async {
    final storageRef = (storage ?? FirebaseStorage.instance).ref();
    final imageRef = storageRef.child('images').child(type).child(id);
    try {
      await imageRef.putFile(file);
      return imageRef.fullPath;
    } on FirebaseException catch (e) {
      return null;
    }
  }
}
