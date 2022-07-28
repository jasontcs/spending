library spending_api;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spending_api/spending_api.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class FirestoreSpendingApi implements SpendingApi {
  final FirebaseFirestore? firestore;

  FirestoreSpendingApi({this.firestore});

  @override
  Stream<List<ApiCategoryModel>> getCategories({
    String? id,
  }) =>
      catogeriesRef(firestore)
          .whereDocumentId(isEqualTo: id)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  @override
  Stream<ApiCategoryModel> getCategory(String id) =>
      getCategories(id: id).map((items) => items.single);

  @override
  Stream<List<ApiCurrencyModel>> getCurrencies({
    String? id,
  }) =>
      currenciesRef(firestore)
          .whereDocumentId(isEqualTo: id)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  @override
  Stream<ApiCurrencyModel> getCurrency(String id) =>
      getCurrencies(id: id).map((items) => items.single);

  @override
  Stream<List<ApiPersonModel>> getPeople({
    String? id,
  }) =>
      peopleRef(firestore)
          .whereDocumentId(isEqualTo: id)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  @override
  Stream<ApiPersonModel> getPerson(String id) =>
      getPeople(id: id).map((items) => items.single);

  @override
  Stream<List<ApiReceiptModel>> getReceipts({
    String? id,
    String? recordId,
  }) =>
      receiptsRef(firestore)
          .whereDocumentId(isEqualTo: id)
          .whereRecordId(isEqualTo: recordId)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  @override
  Stream<ApiReceiptModel> getReceipt(String id) =>
      getReceipts(id: id).map((items) => items.single);

  @override
  Stream<List<ApiRecordModel>> getRecords({
    String? id,
    String? categoryId,
    List<String>? personIds,
  }) =>
      recordsRef(firestore)
          .whereDocumentId(isEqualTo: id)
          .whereCategoryId(isEqualTo: categoryId)
          .wherePersonIds(arrayContainsAny: personIds)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  @override
  Stream<ApiRecordModel> getRecord(String id) =>
      getRecords(id: id).map((items) => items.single);

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
}
