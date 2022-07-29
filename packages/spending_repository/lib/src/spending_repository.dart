import 'dart:io';

import '../spending_repository.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

abstract class SpendingRepository {
  Stream<List<Record>> getRecords({
    DateTime? from,
    DateTime? to,
    Category? category,
    Person? person,
  });

  Future<Record?> editRecord(Record? oldRecord, Record? newRecord);

  Stream<List<Category>> getCategories();

  Future<Category?> editCategory(Category? oldCategory, Category? newCategory);

  Stream<List<Person>> getPeople();

  Future<Person?> editPerson(Person? oldPerson, Person? newPerson);

  Future<Receipt> editImage(File file);

  Future<Currency?> setCurrency(Currency currency, double rate);
}
