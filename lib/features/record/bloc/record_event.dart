part of 'record_bloc.dart';

abstract class RecordEvent {}

class RecordCurrenciesUpdated extends RecordEvent {
  RecordCurrenciesUpdated(this.currencies);

  final List<Currency> currencies;
}

class RecordCategoriesUpdated extends RecordEvent {
  RecordCategoriesUpdated(this.categories);

  final List<Category> categories;
}

class RecordPeopleUpdated extends RecordEvent {
  RecordPeopleUpdated(this.people);

  final List<Person> people;
}

class RecordFormSaved extends RecordEvent {
  RecordFormSaved(this.record);

  final Record record;
}

class RecordPageEntered extends RecordEvent {
  RecordPageEntered({this.recordId, this.dateString});

  final String? recordId;
  final String? dateString;
}

// class RecordPersonSelected extends RecordEvent {
//   RecordPersonSelected(this.person);

//   final String person;
// }
