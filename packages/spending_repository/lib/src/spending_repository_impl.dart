import 'dart:io';

import 'package:collection/collection.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';

import 'package:spending_api/spending_api.dart';

import '../spending_repository.dart';
import 'spending_repository_error.dart';
import 'dart:developer' as developer;
import 'package:logging/logging.dart';

enum SpendingRepositoryImage {
  category('category'),
  receipt('recipt');

  final String title;
  const SpendingRepositoryImage(this.title);
}

class ISpendingRepository implements SpendingRepository {
  final SpendingApi _spendingApi;

  ISpendingRepository(this._spendingApi);

  @override
  Future<Category> addCategory(Category category) async {
    if (category.imageUrl == null && category.image != null) {
      final url = await _spendingApi.uploadImage(
        file: category.image!,
        id: DateTime.now().toIso8601String(),
        type: SpendingRepositoryImage.category.title,
      );
      await _spendingApi
          .addCategory(category.copyWith(imageUrl: url).fromEntity());
    } else {
      await _spendingApi.addCategory(category.fromEntity());
    }
    return category;
  }

  @override
  Future<Currency> addCurrency(Currency currency) async {
    await _spendingApi.addCurrency(currency.fromEntity());
    return currency;
  }

  @override
  Future<Record> addRecord(Record record) async {
    List<Receipt> tmpReceipts = record.receipts.toList();
    for (var receipt in tmpReceipts) {
      if (receipt.imageUrl == null) {
        if (receipt.image == null) throw SpendingRepositoryArgumentInvalid();
        final url = await _spendingApi.uploadImage(
          file: receipt.image!,
          id: DateTime.now().toIso8601String(),
          type: SpendingRepositoryImage.receipt.title,
        );
        receipt = receipt.copyWith(imageUrl: url);
      }
    }
    final finalRecord = record.copyWith(receipts: tmpReceipts);
    String id = await _spendingApi.addRecord(finalRecord.fromEntity());
    return finalRecord.copyWith(id: id);
  }

  @override
  Stream<List<Category>> get categoriesStream => _recordsStream.map(
      (records) => records.map((record) => record.category).toSet().toList());

  @override
  Stream<List<Currency>> get currenciesStream => _recordsStream.map(
      (records) => records.map((record) => record.currency).toSet().toList());

  @override
  Stream<List<Person>> get peopleStream => _recordsStream.map(
      (records) => records.map((record) => record.person).toSet().toList());

  @override
  Stream<List<Record>> get recordsStream => _recordsStream;

  Stream<List<Record>> get _recordsStream => CombineLatestStream.combine3(
          _spendingApi.recordsStream,
          _spendingApi.categoriesStream,
          _spendingApi.currenciesStream, (List<ApiRecordModel> records,
              List<ApiCategoryModel> categories,
              List<ApiCurrencyModel> currencies) {
        late List<Record> recordsOutput;
        recordsOutput = records.map((recordModel) {
          late Record recordOutput;
          recordOutput = recordModel.toEntity(
            currency: (title) => currencies
                .singleWhere((element) => element.title == title)
                .toEntity(records: recordsOutput),
            category: (title) => categories
                .singleWhere((element) => element.title == title)
                .toEntity(records: recordsOutput),
            person: (title) => Person(title: title, records: recordsOutput),
            receipts: (receipts) => receipts
                .map((url) => Receipt(imageUrl: url, record: recordOutput))
                .toList(),
          );
          return recordOutput;
        }).toList();
        return recordsOutput;
      }).asyncMap((records) async {
        List<Record> updatedRecords = [];
        for (var record in records) {
          List<Receipt> updatedReceipts = [];
          for (var receipt in record.receipts) {
            if (receipt.image == null && receipt.imageUrl != null) {
              final file = await _saveImage(receipt.imageUrl!);
              updatedReceipts.add(receipt.copyWith(image: file));
            } else {
              updatedReceipts.add(receipt);
            }
          }
          updatedRecords.add(record.copyWith(receipts: updatedReceipts));
        }
        _logInfo('_recordsStream', updatedRecords);
        return updatedRecords;
      });

  @override
  Future<Category> deleteCategory(Category category) async {
    await _spendingApi.removeCategory(category.title);
    _logInfo('deleteCategory', category);
    return category;
  }

  @override
  Future<Currency> deleteCurrency(Currency currency) async {
    await _spendingApi.removeCurrency(currency.title);
    _logInfo('deleteCurrency', currency);
    return currency;
  }

  @override
  Future<Record> deleteRecord(Record record) async {
    if (record.id != null) {
      await _spendingApi.removeRecord(record.id!);
      return record.copyWith(id: null);
    }
    _logInfo('deleteRecord', record);
    return record;
  }

  @override
  Future<Category> updateCategory(Category old, Category new_) async {
    if (old.records != new_.records) throw SpendingRepositoryArgumentInvalid();
    if (new_.imageUrl == null && new_.image != null) {
      final url = await _spendingApi.uploadImage(
        file: new_.image!,
        id: DateTime.now().toIso8601String(),
        type: SpendingRepositoryImage.category.title,
      );
      await _spendingApi.editCategory(
          old.title, new_.copyWith(imageUrl: url).fromEntity());
    } else {
      await _spendingApi.editCategory(old.title, new_.fromEntity());
    }
    _logInfo('updateCategory', new_);
    return new_;
  }

  @override
  Future<Currency> updateCurrency(Currency old, Currency new_) async {
    if (old.records != new_.records) throw SpendingRepositoryArgumentInvalid();
    await _spendingApi.editCurrency(old.title, new_.fromEntity());
    _logInfo('updateCurrency', new_);
    return new_;
  }

  @override
  Future<Person> updatePerson(Person old, Person new_) async {
    await _spendingApi.editPerson(old.title, new_.title);
    _logInfo('updatePerson', new_);
    return new_;
  }

  @override
  Future<Record> updateRecord(Record old, Record new_) async {
    if (old.id == null) throw SpendingRepositoryArgumentInvalid();
    List<Receipt> tmpReceipts = new_.receipts.toList();
    for (var receipt in tmpReceipts) {
      if (receipt.imageUrl == null) {
        if (receipt.image == null) throw SpendingRepositoryArgumentInvalid();
        final url = await _spendingApi.uploadImage(
          file: receipt.image!,
          id: DateTime.now().toIso8601String(),
          type: SpendingRepositoryImage.receipt.title,
        );
        receipt = receipt.copyWith(imageUrl: url);
      }
    }
    await _spendingApi.editRecord(old.id!, new_.fromEntity());
    _logInfo('updateRecord', new_);
    return new_;
  }

  Future<File?> _saveImage(String url) async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final file = File("${appDocDir.absolute}/images/$url");
    if (await _spendingApi.saveImageToFile(file: file, url: url)) {
      return file;
    }
    return null;
  }

  void _logInfo(String function, Object? data) {
    developer.log(
      '$function: $data',
      name: 'Repository',
      level: Level.INFO.value,
    );
  }
}

extension ApiCategoryModelX on ApiCategoryModel {
  Category toEntity({required List<Record> records}) {
    return Category(
      budget: budget,
      title: title,
      imageUrl: imageUrl,
      records: records,
    );
  }
}

extension ApiCurrencyModelX on ApiCurrencyModel {
  Currency toEntity({
    required List<Record> records,
  }) {
    return Currency(
      rate: rate,
      title: title,
      flag: flag,
      records: records,
    );
  }
}

extension ApiRecordModelX on ApiRecordModel {
  Record toEntity({
    required Currency Function(String title) currency,
    required Category Function(String title) category,
    required Person Function(String title) person,
    required List<Receipt> Function(List<String> receipts) receipts,
  }) {
    return Record(
      id: id,
      amount: amount,
      currency: currency(currencyTitle),
      category: category(categoryTitle),
      person: person(personTitle),
      receipts: receipts(receiptsUrl),
      remarks: remarks,
      dateTime: dateTime,
    );
  }
}

extension CategoryX on Category {
  ApiCategoryModel fromEntity() {
    return ApiCategoryModel(
      title: title,
      budget: budget,
      imageUrl: imageUrl,
    );
  }
}

extension CurrencyX on Currency {
  ApiCurrencyModel fromEntity() {
    return ApiCurrencyModel(
      rate: rate,
      title: title,
      flag: flag,
    );
  }
}

extension RecordX on Record {
  ApiRecordModel fromEntity() {
    return ApiRecordModel(
      id: id,
      amount: amount,
      currencyTitle: currency.title,
      categoryTitle: category.title,
      personTitle: person.title,
      receiptsUrl: receipts.map((e) => e.imageUrl).whereNotNull().toList(),
      remarks: remarks,
      dateTime: dateTime,
    );
  }
}
