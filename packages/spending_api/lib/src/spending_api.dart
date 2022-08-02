import 'dart:io';

import '../spending_api.dart';

abstract class SpendingApi {
  Stream<List<ApiCategoryModel>> get categoriesStream;
  Stream<List<ApiCurrencyModel>> get currenciesStream;
  Stream<List<ApiRecordModel>> get recordsStream;
  Stream<List<String>> get peopleStream;

  Future<List<ApiCategoryModel>> getCategories({
    String? recordId,
  });
  Future<List<ApiCurrencyModel>> getCurrencies({
    String? recordId,
  });
  Future<List<ApiRecordModel>> getRecords({
    String? categoryTitle,
    String? currencyTitle,
    String? personTitle,
    DateTime? from,
    DateTime? to,
  });

  Future<ApiCategoryModel> getCategory(String title);
  Future<ApiCurrencyModel> getCurrency(String title);
  Future<ApiRecordModel> getRecord(String id);

  Future<String> addCategory(ApiCategoryModel category);
  Future<String> addCurrency(ApiCurrencyModel currency);
  Future<String> addRecord(ApiRecordModel record);

  Future<String> editCategory(String title, ApiCategoryModel category);
  Future<String> editCurrency(String title, ApiCurrencyModel currency);
  Future<String> editRecord(String id, ApiRecordModel record);
  Future<String> editPerson(String oldName, String newName);

  Future<void> removeCategory(String title);
  Future<void> removeCurrency(String title);
  Future<void> removeRecord(String id);

  Future<String> uploadImage({
    required File file,
    required String id,
    required String type,
  });

  Future<bool> saveImageToFile({required File file, required String url});
}
