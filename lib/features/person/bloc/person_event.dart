part of 'person_bloc.dart';

abstract class PersonEvent {}

class PersonItemLoaded extends PersonEvent {
  PersonItemLoaded(this.cid);

  final String? cid;
}

class PersonFormEdited extends PersonEvent {}

class PersonFormSaved extends PersonEvent {
  PersonFormSaved(this.person);

  final Person person;
}

class PersonRemoveRequested extends PersonEvent {}
