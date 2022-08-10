part of 'people_bloc.dart';

abstract class PeopleEvent {}

class PeopleItemsChanged extends PeopleEvent {
  PeopleItemsChanged(this.people);

  final List<Person> people;
}
