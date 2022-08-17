part of 'person_bloc.dart';

@freezed
class PersonState with _$PersonState {
  const factory PersonState({
    @Default(AppFormStatus.init) AppFormStatus status,
    Person? person,
  }) = _PersonState;
}
