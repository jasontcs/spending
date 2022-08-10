part of 'people_bloc.dart';

class PeopleState {
  PeopleState({
    List<Person>? people,
  }) : people = people ?? [];

  final List<Person> people;

  PeopleState copyWith({
    List<Person>? people,
  }) =>
      PeopleState(
        people: people ?? this.people,
      );
}
