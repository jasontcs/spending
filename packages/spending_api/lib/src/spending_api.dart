import 'dart:io';

import '../spending_api.dart';

abstract class SpendingApi {
  Stream<List<ApiCategoryModel>> get categoriesStream;
  Stream<List<ApiCurrencyModel>> get currenciesStream;
  Stream<List<ApiPersonModel>> get peopleStream;
  Stream<List<ApiReceiptModel>> get receiptsStream;
  Stream<List<ApiRecordModel>> get recordsStream;

  Future<List<ApiCategoryModel>> getCategories({
    String? recordId,
    String? title,
  });
  Future<List<ApiCurrencyModel>> getCurrencies({
    String? recordId,
    String? title,
  });
  Future<List<ApiPersonModel>> getPeople({
    String? title,
    String? recordId,
  });
  Future<List<ApiReceiptModel>> getReceipts({
    String? recordId,
    String? imageUrl,
  });
  Future<List<ApiRecordModel>> getRecords({
    String? categoryId,
    String? personId,
    DateTime? from,
    DateTime? to,
  });

  Future<ApiCategoryModel> getCategory(String id);
  Future<ApiCurrencyModel> getCurrency(String id);
  Future<ApiPersonModel> getPerson(String id);
  Future<ApiReceiptModel> getReceipt(String id);
  Future<ApiRecordModel> getRecord(String id);

  Future<String?> editCategory(String? id, ApiCategoryModel? category);
  Future<String?> editCurrency(String? id, ApiCurrencyModel? currency);
  Future<String?> editPerson(String? id, ApiPersonModel? person);
  Future<String?> editReceipt(String? id, ApiReceiptModel? receipt);
  Future<String?> editRecord(String? id, ApiRecordModel? record);

  Future<String?> uploadImage({
    required File file,
    required String id,
    required String type,
  });
  Future<String?> downloadImage(String path);
}
