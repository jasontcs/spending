part of 'record_bloc.dart';

class RecordState {
  RecordState({
    List<Category>? categories,
    List<Currency>? currencies,
    List<Person>? people,
    this.record,
    this.formKey,
  })  : categories = categories ?? [],
        currencies = currencies ?? [],
        people = people ?? [];

  final List<Category> categories;
  final List<Currency> currencies;
  final List<Person> people;
  final Record? record;
  final GlobalKey<FormBuilderState>? formKey;

  RecordState copyWith({
    List<Category>? categories,
    List<Currency>? currencies,
    List<Person>? people,
    Record? record,
    GlobalKey<FormBuilderState>? formKey,
  }) =>
      RecordState(
        categories: categories ?? this.categories,
        currencies: currencies ?? this.currencies,
        people: people ?? this.people,
        record: record ?? this.record,
        formKey: formKey ?? this.formKey,
      );
}
