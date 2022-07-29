import 'dart:io';

import 'package:spending_api/spending_api.dart';
import 'package:spending_repository/src/spending_repository_error.dart';

import '../spending_repository.dart';

class ISpendingRepository implements SpendingRepository {
  final SpendingApi _spendingApi;

  ISpendingRepository(this._spendingApi);

  // @override
  // Future<Record?> addReceipt(Record record, File receipt) async {
  //   if (record.id == null) throw SpendingRepositoryArgumentInvalid();
  //   final imageUrl = await _spendingApi.uploadImage(
  //       file: receipt, id: DateTime.now().toIso8601String(), type: 'receipt');
  //   var id = await _spendingApi.editReceipt(
  //     null,
  //     ApiReceiptModel(
  //       imageUrl: imageUrl,
  //       recordId: record.id!,
  //     ),
  //   );
  //   if (id == null) throw SpendingRepositoryApiFail();
  //   final model = await _spendingApi.getRecord(record.id!);
  //   final result = await _spendingApi.editRecord(
  //       record.id!,
  //       ApiRecordModel(
  //         amount: model.amount,
  //         currencyId: model.currencyId,
  //         categoryId: model.categoryId,
  //         personId: model.personId,
  //         receiptIds: model.receiptIds.toList()..add(id),
  //         remarks: model.remarks,
  //         dateTime: model.dateTime,
  //       ));
  //   if (result == null) throw SpendingRepositoryApiFail();
  // }

  // @override
  // Future<Category?> editCategory(
  //     Category? oldCategory, Category? newCategory) async {
  //   String? result;
  //   if (oldCategory == null) {
  //     if (newCategory != null) {
  //       result = await _spendingApi.editCategory(
  //         null,
  //         ApiCategoryModel(
  //           title: newCategory.title,
  //           budget: newCategory.budget,
  //           imageUrl: newCategory.imageUrl,
  //           recordIds: [],
  //         ),
  //       );
  //     } else {
  //       throw SpendingRepositoryArgumentInvalid();
  //     }
  //   } else {
  //     final model = await _spendingApi.getCategory(oldCategory.id!);
  //     if (newCategory != null) {
  //       result = await _spendingApi.editPerson(
  //         model.id,
  //         ApiPersonModel(title: newCategory.title, recordIds: []),
  //       );
  //     } else {
  //       if (oldCategory.records.isNotEmpty) {
  //         throw SpendingRepositoryActionNotVaild('Binded to records');
  //       }
  //       result = await _spendingApi.editPerson(model.id, null);
  //     }
  //   }
  //   if (result == null) throw SpendingRepositoryApiFail();
  // }

  @override
  Future<Person?> editPerson(Person? oldPerson, Person? newPerson) async {
    if (oldPerson == null) {
      if (newPerson != null) {
        final id = await _spendingApi.editPerson(
          null,
          ApiPersonModel(title: newPerson.title, recordIds: []),
        );
        if (id == null) throw SpendingRepositoryApiFail();
        return newPerson.copyWith(id: id);
      } else {
        throw SpendingRepositoryArgumentInvalid();
      }
    } else {
      final model = await _spendingApi.getPerson(oldPerson.id!);
      if (newPerson != null) {
        final id = await _spendingApi.editPerson(
          model.id,
          ApiPersonModel(title: newPerson.title, recordIds: []),
        );
        if (id == null) throw SpendingRepositoryApiFail();
        return newPerson;
      } else {
        if (oldPerson.records.isNotEmpty) {
          throw SpendingRepositoryActionNotVaild('Binded to records');
        }
        final id = await _spendingApi.editPerson(model.id, null);
        if (id == null) throw SpendingRepositoryApiFail();
        return null;
      }
    }
  }

  @override
  Future<Record?> editRecord(Record? oldRecord, Record? newRecord) {
    // TODO: implement editRecord
    throw UnimplementedError();
  }

  @override
  Future<Currency?> setCurrency(Currency currency, double rate) async {
    await _spendingApi.editCurrency(
        currency.id,
        ApiCurrencyModel(
          rate: rate,
          title: currency.title,
          flag: currency.flag,
          recordIds: currency.records.map((e) => e.id).toList(),
        ));
  }

  @override
  Stream<List<Category>> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Stream<List<Person>> getPeople() {
    // TODO: implement getPeople
    throw UnimplementedError();
  }

  @override
  Stream<List<Record>> getRecords(
      {DateTime? from, DateTime? to, Category? category, Person? person}) {
    // TODO: implement getRecords
    throw UnimplementedError();
  }

  @override
  Future<Receipt> editImage(File file) {
    // TODO: implement editImage
    throw UnimplementedError();
  }
}
