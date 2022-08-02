import 'dart:io';

import '../spending_repository.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

abstract class SpendingRepository {
  Stream<List<Record>> get recordsStream;
  Stream<List<Category>> get categoriesStream;
  Stream<List<Currency>> get currenciesStream;
  Stream<List<Person>> get peopleStream;

  Future<Record> addRecord(Record record);
  Future<Category> addCategory(Category category);
  Future<Currency> addCurrency(Currency currency);

  Future<Record> updateRecord(Record old, Record new_);
  Future<Category> updateCategory(Category old, Category new_);
  Future<Currency> updateCurrency(Currency old, Currency new_);
  Future<Person> updatePerson(Person old, Person new_);

  Future<Record> deleteRecord(Record record);
  Future<Category> deleteCategory(Category category);
  Future<Currency> deleteCurrency(Currency currency);
}
