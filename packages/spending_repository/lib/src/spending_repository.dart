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

  List<Record> get records;
  List<Category> get categories;
  List<Currency> get currencies;
  List<Person> get people;

  Record? getRecord(String id);
  Category? getCategory(String title);
  Currency? getCurrency(String title);
  Person? getPerson(String title);

  Future<Record> addRecord(Record record);
  Future<Category> addCategory(Category category);
  Future<Currency> addCurrency(Currency currency);
  Future<Person> addPerson(Person person);

  Future<Record> updateRecord(Record old, Record new_);
  Future<Category> updateCategory(Category old, Category new_);
  Future<Currency> updateCurrency(Currency old, Currency new_);
  Future<Person> updatePerson(Person old, Person new_);

  Future<Record> deleteRecord(Record record);
  Future<Category> deleteCategory(Category category);
  Future<Currency> deleteCurrency(Currency currency);
  Future<Person> deletePerson(Person person);
}
