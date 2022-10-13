import 'dart:async';

import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

import 'package:spending_api/spending_api.dart';

import '../spending_repository.dart';
import 'spending_repository_error.dart';
import 'dart:developer' as developer;
import 'package:logging/logging.dart';

enum SpendingRepositoryImage {
  receipt('receipt');

  final String title;
  const SpendingRepositoryImage(this.title);
}

class SpendingRepositoryImpl implements SpendingRepository {
  final SpendingApi _spendingApi;

  SpendingRepositoryImpl(this._spendingApi);

  @override
  Future<Category> addCategory(Category category) async {
    String id = await _spendingApi.addCategory(category.fromEntity());
    final result = await getCategory(id);
    _logInfo('addCategory', result);
    return result!;
  }

  @override
  Future<Currency> addCurrency(Currency currency) async {
    String id = await _spendingApi.addCurrency(currency.fromEntity());
    final result = await getCurrency(id);
    _logInfo('addCurrency', result);
    return result!;
  }

  @override
  Future<Person> addPerson(Person person) async {
    String id = await _spendingApi.addPerson(person.fromEntity());
    final result = await getPerson(id);
    _logInfo('addPerson', result);
    return result!;
  }

  @override
  Future<Record> addRecord(Record record) async {
    final finalRecord = await _uploadReceiptImage(record);
    String id = await _spendingApi.addRecord(finalRecord.fromEntity());
    final result = await getRecord(id);
    _logInfo('addRecord', result);
    return result!;
  }

  @override
  Stream<List<Category>> get categoriesStream =>
      _spendingApi.categoriesStream.map((categories) {
        return categories.map((category) => category.toEntity()).toList();
      });

  @override
  Stream<List<Currency>> get currenciesStream =>
      _spendingApi.currenciesStream.map((currencies) {
        return currencies.map((currency) => currency.toEntity()).toList();
      });

  @override
  Stream<List<Person>> get peopleStream =>
      _spendingApi.peopleStream.map((people) {
        return people.map((person) => person.toEntity()).toList();
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
            currency: (id) => currencyModels
                .map((currencyModel) => currencyModel.toEntity())
                .singleWhere((currency) => currency.id == id),
            category: (id) => categoryModels
                .map((categoryModel) => categoryModel.toEntity())
                .singleWhere((category) => category.id == id),
            person: (id) => personModels
                .map((personModel) => personModel.toEntity())
                .singleWhere((person) => person.id == id),
          );
        }).toList();

        return records;
      }).asyncMap((records) async {
        final result = await Future.wait(
            records.map((record) async => await _appendImageUrl(record)));
        _logInfo('_recordsStream', result);
        return result;
      });

  Future<Record> _appendImageUrl(Record record) async {
    return record.copyWith(
      receipts: await Future.wait(
        record.receipts.map(
          (receipt) async => receipt.copyWith.image(
            imageUrl: await _spendingApi.getImageUrl(receipt.image.imagePath!),
          ),
        ),
      ),
    );
  }

  Future<Record> _uploadReceiptImage(Record record) async {
    return record.copyWith(
      receipts: await Future.wait(
        record.receipts.map((receipt) async {
          if (receipt.image.imageFile != null) {
            final path = await _spendingApi.uploadImage(
              file: receipt.image.imageFile!,
              type: SpendingRepositoryImage.receipt.title,
            );
            return receipt.copyWith.image(
              imagePath: path,
              imageFile: null,
            );
          }
          return receipt;
        }),
      ),
    );
  }

  @override
  Future<Category> deleteCategory(Category category) async {
    await _spendingApi.removeCategory(category.id!);
    _logInfo('deleteCategory', category);
    return category.copyWith(id: null);
  }

  @override
  Future<Currency> deleteCurrency(Currency currency) async {
    await _spendingApi.removeCurrency(currency.id!);
    _logInfo('deleteCurrency', currency);
    return currency.copyWith(id: null);
  }

  @override
  Future<Record> deleteRecord(Record record) async {
    if (record.id != null) {
      await _spendingApi.removeRecord(record.id!);
      return record.copyWith(id: null);
    }
    _logInfo('deleteRecord', record);
    return record.copyWith(id: null);
  }

  @override
  Future<Person> deletePerson(Person person) async {
    await _spendingApi.removePerson(person.id!);
    _logInfo('deletePerson', person);
    return person.copyWith(id: null);
  }

  @override
  Future<Category> updateCategory(Category old, Category new_) async {
    await _spendingApi.editCategory(old.id!, new_.fromEntity());
    _logInfo('updateCategory', new_);
    return new_;
  }

  @override
  Future<Currency> updateCurrency(Currency old, Currency new_) async {
    await _spendingApi.editCurrency(old.id!, new_.fromEntity());
    _logInfo('updateCurrency', new_);
    return new_;
  }

  @override
  Future<Person> updatePerson(Person old, Person new_) async {
    await _spendingApi.editPerson(old.id!, new_.fromEntity());
    _logInfo('updatePerson', new_);
    return new_;
  }

  @override
  Future<Record> updateRecord(Record old, Record new_) async {
    if (old.id == null) throw SpendingRepositoryArgumentInvalid();
    final finalRecord = await _uploadReceiptImage(new_);
    await _spendingApi.editRecord(old.id!, finalRecord.fromEntity());
    final result = await getRecord(new_.id!);
    _logInfo('updateRecord', result);
    return result!;
  }

  void _logInfo(String function, Object? data) {
    developer.log(
      '$function: $data',
      name: 'Repository',
      level: Level.INFO.value,
    );
  }

  @override
  Future<Category?> getCategory(String id) =>
      _spendingApi.getCategory(id).then((value) => value.toEntity());

  @override
  Future<Currency?> getCurrency(String id) =>
      _spendingApi.getCurrency(id).then((value) => value.toEntity());
  @override
  Future<Person?> getPerson(String id) =>
      _spendingApi.getPerson(id).then((value) => value.toEntity());

  @override
  Future<Record?> getRecord(String id) async {
    final model = await _spendingApi.getRecord(id);
    final category = await getCategory(model.categoryId);
    final currency = await getCurrency(model.currencyId);
    final person = await getPerson(model.personId);
    final record = model.toEntity(
      currency: (_) => currency!,
      category: (_) => category!,
      person: (_) => person!,
    );
    return await _appendImageUrl(record);
  }

  @override
  Future<List<Category>> get categories => _spendingApi
      .getCategories()
      .then((value) => value.map((e) => e.toEntity()).toList());

  @override
  Future<List<Currency>> get currencies => _spendingApi
      .getCurrencies()
      .then((value) => value.map((e) => e.toEntity()).toList());
  @override
  Future<List<Person>> get people => _spendingApi
      .getPeople()
      .then((value) => value.map((e) => e.toEntity()).toList());

  @override
  Future<List<Record>> get records async {
    final categories = await this.categories;
    final currencies = await this.currencies;
    final people = await this.people;
    return _spendingApi.getRecords().then((value) => value.map((e) {
          return e.toEntity(
            currency: (id) =>
                currencies.singleWhere((element) => element.id == id),
            category: (id) =>
                categories.singleWhere((element) => element.id == id),
            person: (id) => people.singleWhere((element) => element.id == id),
          );
        }).toList());
  }
}

extension ApiCategoryModelX on ApiCategoryModel {
  Category toEntity() {
    return Category(
      id: id,
      budget: budget,
      title: title,
      icon: icon,
    );
  }
}

extension ApiCurrencyModelX on ApiCurrencyModel {
  Currency toEntity() {
    return Currency(
      id: id,
      rate: rate,
      title: title,
      flag: flag,
      updatedAt: updatedAt,
    );
  }
}

extension ApiPersonModelX on ApiPersonModel {
  Person toEntity() {
    return Person(id: id, title: title);
  }
}

extension ApiRecordModelX on ApiRecordModel {
  Record toEntity({
    required Currency Function(String id) currency,
    required Category Function(String id) category,
    required Person Function(String id) person,
  }) {
    return Record(
      id: id,
      amount: amount,
      currency: currency(currencyId),
      category: category(categoryId),
      person: person(personId),
      receipts: receiptsPath
          .map((receiptPath) =>
              Receipt(image: SpendingImage(imagePath: receiptPath)))
          .toList(),
      remarks: remarks,
      dateTime: dateTime,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension CategoryX on Category {
  ApiCategoryModel fromEntity() {
    return ApiCategoryModel(
      id: id,
      title: title,
      budget: budget,
      icon: icon,
    );
  }
}

extension CurrencyX on Currency {
  ApiCurrencyModel fromEntity() {
    return ApiCurrencyModel(
      id: id,
      rate: rate,
      title: title,
      flag: flag,
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }
}

extension PersonX on Person {
  ApiPersonModel fromEntity() {
    return ApiPersonModel(id: id, title: title);
  }
}

extension RecordX on Record {
  ApiRecordModel fromEntity() {
    return ApiRecordModel(
      id: id,
      amount: amount,
      currencyId: currency.id!,
      categoryId: category.id!,
      personId: person.id!,
      receiptsPath:
          receipts.map((e) => e.image.imagePath).whereNotNull().toList(),
      remarks: remarks,
      dateTime: dateTime,
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }
}
