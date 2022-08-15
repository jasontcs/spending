part of 'people_bloc.dart';

@freezed
class PeopleState with _$PeopleState {
  const factory PeopleState({@Default([]) List<Person> people}) = _PeopleState;
}
