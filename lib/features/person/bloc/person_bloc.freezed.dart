// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonState {
  AppFormStatus get status => throw _privateConstructorUsedError;
  Person? get person => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonStateCopyWith<PersonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonStateCopyWith<$Res> {
  factory $PersonStateCopyWith(
          PersonState value, $Res Function(PersonState) then) =
      _$PersonStateCopyWithImpl<$Res, PersonState>;
  @useResult
  $Res call({AppFormStatus status, Person? person});

  $PersonCopyWith<$Res>? get person;
}

/// @nodoc
class _$PersonStateCopyWithImpl<$Res, $Val extends PersonState>
    implements $PersonStateCopyWith<$Res> {
  _$PersonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? person = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppFormStatus,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonStateCopyWith<$Res>
    implements $PersonStateCopyWith<$Res> {
  factory _$$_PersonStateCopyWith(
          _$_PersonState value, $Res Function(_$_PersonState) then) =
      __$$_PersonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppFormStatus status, Person? person});

  @override
  $PersonCopyWith<$Res>? get person;
}

/// @nodoc
class __$$_PersonStateCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res, _$_PersonState>
    implements _$$_PersonStateCopyWith<$Res> {
  __$$_PersonStateCopyWithImpl(
      _$_PersonState _value, $Res Function(_$_PersonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? person = freezed,
  }) {
    return _then(_$_PersonState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppFormStatus,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
    ));
  }
}

/// @nodoc

class _$_PersonState implements _PersonState {
  const _$_PersonState({this.status = AppFormStatus.init, this.person});

  @override
  @JsonKey()
  final AppFormStatus status;
  @override
  final Person? person;

  @override
  String toString() {
    return 'PersonState(status: $status, person: $person)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.person, person) || other.person == person));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, person);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonStateCopyWith<_$_PersonState> get copyWith =>
      __$$_PersonStateCopyWithImpl<_$_PersonState>(this, _$identity);
}

abstract class _PersonState implements PersonState {
  const factory _PersonState(
      {final AppFormStatus status, final Person? person}) = _$_PersonState;

  @override
  AppFormStatus get status;
  @override
  Person? get person;
  @override
  @JsonKey(ignore: true)
  _$$_PersonStateCopyWith<_$_PersonState> get copyWith =>
      throw _privateConstructorUsedError;
}
