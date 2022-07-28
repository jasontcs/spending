import '../spending_api.dart';

abstract class SpendingApi {
  Stream<List<ApiCategoryModel>> getCategories({
    String? id,
  });
  Stream<List<ApiCurrencyModel>> getCurrencies({
    String? id,
  });
  Stream<List<ApiPersonModel>> getPeople({
    String? id,
  });
  Stream<List<ApiReceiptModel>> getReceipts({
    String? id,
    String? recordId,
  });
  Stream<List<ApiRecordModel>> getRecords({
    String? id,
    String? categoryId,
    List<String>? personIds,
    DateTime? from,
    DateTime? to,
  });

  Stream<ApiCategoryModel> getCategory(String id);
  Stream<ApiCurrencyModel> getCurrency(String id);
  Stream<ApiPersonModel> getPerson(String id);
  Stream<ApiReceiptModel> getReceipt(String id);
  Stream<ApiRecordModel> getRecord(String id);

  Future<String?> editCategory(String? id, ApiCategoryModel? category);
  Future<String?> editCurrency(String? id, ApiCurrencyModel? currency);
  Future<String?> editPerson(String? id, ApiPersonModel? person);
  Future<String?> editReceipt(String? id, ApiReceiptModel? receipt);
  Future<String?> editRecord(String? id, ApiRecordModel? record);
}
