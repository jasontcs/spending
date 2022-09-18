import 'dart:io';

import '../spending_api.dart';

abstract class SpendingApi {
  Stream<List<ApiCategoryModel>> get categoriesStream;
  Stream<List<ApiCurrencyModel>> get currenciesStream;
  Stream<List<ApiRecordModel>> get recordsStream;
  Stream<List<ApiPersonModel>> get peopleStream;

  Future<List<ApiCategoryModel>> getCategories({
    String? recordId,
  });
  Future<List<ApiCurrencyModel>> getCurrencies({
    String? recordId,
  });
  Future<List<ApiRecordModel>> getRecords({
    String? categoryId,
    String? currencyId,
    String? personId,
    DateTime? from,
    DateTime? to,
  });
  Future<List<ApiPersonModel>> getPeople({
    String? recordId,
  });

  Future<ApiCategoryModel> getCategory(String id);
  Future<ApiCurrencyModel> getCurrency(String id);
  Future<ApiRecordModel> getRecord(String id);
  Future<ApiPersonModel> getPerson(String id);

  Future<String> addCategory(ApiCategoryModel category);
  Future<String> addCurrency(ApiCurrencyModel currency);
  Future<String> addRecord(ApiRecordModel record);
  Future<String> addPerson(ApiPersonModel person);

  Future<String> editCategory(String id, ApiCategoryModel category);
  Future<String> editCurrency(String id, ApiCurrencyModel currency);
  Future<String> editRecord(String id, ApiRecordModel record);
  Future<String> editPerson(String id, ApiPersonModel person);

  Future<void> removeCategory(String id);
  Future<void> removeCurrency(String id);
  Future<void> removeRecord(String id);
  Future<void> removePerson(String id);

  Future<String> uploadImage({
    required File file,
    String? id,
    required String type,
  });

  Future<String> getImageUrl(String path);
}
