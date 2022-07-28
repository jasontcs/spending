library spending_api;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spending_api/spending_api.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class SpendingApi {
  final FirebaseFirestore? firestore;

  SpendingApi({this.firestore});

  Stream<List<ApiCategoryModel>> getCategories({
    String? id,
  }) =>
      catogeriesRef(firestore)
          .whereDocumentId(isEqualTo: id)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  Stream<ApiCategoryModel> getCategory(String id) =>
      getCategories(id: id).map((items) => items.single);

  Stream<List<ApiCurrencyModel>> getCurrencies({
    String? id,
  }) =>
      currenciesRef(firestore)
          .whereDocumentId(isEqualTo: id)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  Stream<ApiCurrencyModel> getCurrency(String id) =>
      getCurrencies(id: id).map((items) => items.single);

  Stream<List<ApiPersonModel>> getPeople({
    String? id,
  }) =>
      peopleRef(firestore)
          .whereDocumentId(isEqualTo: id)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  Stream<ApiPersonModel> getPerson(String id) =>
      getPeople(id: id).map((items) => items.single);

  Stream<List<ApiReceiptModel>> getReceipts({
    String? id,
    String? recordId,
  }) =>
      receiptsRef(firestore)
          .whereDocumentId(isEqualTo: id)
          .whereRecordId(isEqualTo: recordId)
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  Stream<ApiReceiptModel> getReceipt(String id) =>
      getReceipts(id: id).map((items) => items.single);

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

  Stream<ApiRecordModel> getRecord(String id) =>
      getRecords(id: id).map((items) => items.single);

  Future<String> editRecord(String? id, ApiRecordModel? record) {
    if (id == null && record == null) throw Exception();
    if (id == null) {
      return recordsRef(firestore).add(record!).then((value) => value.id);
    } else {
      if (record != null) {
        return recordsRef(firestore).doc(id).set(record).then((_) => id);
      } else {
        return recordsRef(firestore).doc(id).delete().then((_) => id);
      }
    }
  }
}
