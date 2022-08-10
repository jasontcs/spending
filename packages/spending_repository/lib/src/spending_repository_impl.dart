import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
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
    await _spendingApi.addCategory(category.fromEntity());
    _logInfo('addCategory', addCategory);
    return category;
  }

  @override
  Future<Currency> addCurrency(Currency currency) async {
    await _spendingApi.addCurrency(currency.fromEntity());
    _logInfo('addCurrency', currency);
    return currency;
  }

  @override
  Future<Record> addRecord(Record record) async {
    List<Receipt> tmpReceipts = record.receipts.toList();
    for (var receipt in tmpReceipts) {
      if (receipt.image.imagePath != null || receipt.image.imageFile == null) {
        throw SpendingRepositoryArgumentInvalid();
      }
      final path = await _spendingApi.uploadImage(
        file: receipt.image.imageFile!,
        id: DateTime.now().toIso8601String(),
        type: SpendingRepositoryImage.receipt.title,
      );
      receipt = receipt.copyWith.image(imagePath: path);
    }
    final finalRecord = record.copyWith(receipts: tmpReceipts);
    String id = await _spendingApi.addRecord(finalRecord.fromEntity());
    _logInfo('addRecord', record);
    return finalRecord.copyWith(id: id);
  }

  @override
  Future<Person> addPerson(Person person) async {
    await _spendingApi.addPerson(person.fromEntity());
    _logInfo('addPerson', person);
    return person;
  }

  @override
  Stream<List<Category>> get categoriesStream =>
      _spendingApi.categoriesStream.map((categories) {
        _latestCategories =
            categories.map((category) => category.toEntity()).toList();
        return _latestCategories;
      });

  @override
  Stream<List<Currency>> get currenciesStream =>
      _spendingApi.currenciesStream.map((currencies) {
        _latestCurrencies =
            currencies.map((currency) => currency.toEntity()).toList();
        return _latestCurrencies;
      });

  @override
  Stream<List<Person>> get peopleStream =>
      _spendingApi.peopleStream.map((people) {
        _latestPeople = people.map((person) => person.toEntity()).toList();
        return _latestPeople;
      });

  @override
  Stream<List<Record>> get recordsStream => CombineLatestStream.combine4(
          _spendingApi.recordsStream,
          _spendingApi.categoriesStream,
          _spendingApi.currenciesStream,
          _spendingApi.peopleStream, (
        List<ApiRecordModel> recordModels,
        List<ApiCategoryModel> categoryModels,
        List<ApiCurrencyModel> currencyModels,
        List<ApiPersonModel> personModels,
      ) {
        final records = recordModels.map((recordModel) {
          return recordModel.toEntity(
              currency: (title) => currencyModels
                  .map((currencyModel) => currencyModel.toEntity())
                  .singleWhere((currency) => currency.title == title),
              category: (title) => categoryModels
                  .map((categoryModel) => categoryModel.toEntity())
                  .singleWhere((category) => category.title == title),
              person: (title) => personModels
                  .map((personModel) => personModel.toEntity())
                  .singleWhere((person) => person.title == title),
              receipts: (receipts) => receipts
                  .map((receipt) =>
                      Receipt(image: SpendingImage(imagePath: receipt)))
                  .toList());
        }).toList();

        return records;
      }).asyncMap((records) async {
        List<Record> recordsWithImage = [];
        for (var record in records) {
          List<Receipt> receiptsWithImage = [];
          for (var receipt in record.receipts) {
            receiptsWithImage.add(
              receipt.copyWith.image(
                imageUrl:
                    await _spendingApi.getImageUrl(receipt.image.imagePath!),
              ),
            );
          }
          recordsWithImage.add(record.copyWith(receipts: receiptsWithImage));
        }
        _latestRecords = recordsWithImage;
        _logInfo('_recordsStream', recordsWithImage);
        return recordsWithImage;
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
  Future<Person> deletePerson(Person person) async {
    await _spendingApi.removePerson(person.title);
    _logInfo('deletePerson', person);
    return person;
  }

  @override
  Future<Category> updateCategory(Category old, Category new_) async {
    await _spendingApi.editCategory(old.title, new_.fromEntity());
    _logInfo('updateCategory', new_);
    return new_;
  }

  @override
  Future<Currency> updateCurrency(Currency old, Currency new_) async {
    await _spendingApi.editCurrency(old.title, new_.fromEntity());
    _logInfo('updateCurrency', new_);
    return new_;
  }

  @override
  Future<Person> updatePerson(Person old, Person new_) async {
    await _spendingApi.editPerson(old.title, new_.fromEntity());
    _logInfo('updatePerson', new_);
    return new_;
  }

  @override
  Future<Record> updateRecord(Record old, Record new_) async {
    if (old.id == null) throw SpendingRepositoryArgumentInvalid();
    List<Receipt> tmpReceipts = new_.receipts.toList();
    for (var receipt in tmpReceipts) {
      if (receipt.image.imagePath == null) {
        if (receipt.image.imageFile == null) {
          throw SpendingRepositoryArgumentInvalid();
        }
        final path = await _spendingApi.uploadImage(
          file: receipt.image.imageFile!,
          id: DateTime.now().toIso8601String(),
          type: SpendingRepositoryImage.receipt.title,
        );
        receipt = receipt.copyWith.image(imagePath: path);
      }
    }
    await _spendingApi.editRecord(old.id!, new_.fromEntity());
    _logInfo('updateRecord', new_);
    return new_;
  }

  void _logInfo(String function, Object? data) {
    developer.log(
      '$function: $data',
      name: 'Repository',
      level: Level.INFO.value,
    );
  }

  @override
  Category? getCategory(String title) => _latestCategories
      .singleWhereOrNull((category) => category.title == title);

  @override
  Currency? getCurrency(String title) => _latestCurrencies
      .singleWhereOrNull((currency) => currency.title == title);

  @override
  Person? getPerson(String title) =>
      _latestPeople.singleWhereOrNull((person) => person.title == title);

  @override
  Record? getRecord(String id) =>
      _latestRecords.singleWhereOrNull((record) => record.id == id);

  List<Record> _latestRecords = [];
  List<Category> _latestCategories = [];
  List<Currency> _latestCurrencies = [];
  List<Person> _latestPeople = [];

  @override
  List<Category> get categories => _latestCategories;

  @override
  List<Currency> get currencies => _latestCurrencies;

  @override
  List<Person> get people => _latestPeople;

  @override
  List<Record> get records => _latestRecords;
}

extension ApiCategoryModelX on ApiCategoryModel {
  Category toEntity() {
    return Category(
      budget: budget,
      title: title,
      icon: icon,
    );
  }
}

extension ApiCurrencyModelX on ApiCurrencyModel {
  Currency toEntity() {
    return Currency(
      rate: rate,
      title: title,
      flag: flag,
    );
  }
}

extension ApiPersonModelX on ApiPersonModel {
  Person toEntity() {
    return Person(title: title);
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
      receipts: receipts(receiptsPath),
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
      icon: icon,
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

extension PersonX on Person {
  ApiPersonModel fromEntity() {
    return ApiPersonModel(title: title);
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
      receiptsPath:
          receipts.map((e) => e.image.imagePath).whereNotNull().toList(),
      remarks: remarks,
      dateTime: dateTime,
    );
  }
}
