// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'people_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PeopleState {
  List<Person> get people => throw _privateConstructorUsedError;
  Person? get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeopleStateCopyWith<PeopleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleStateCopyWith<$Res> {
  factory $PeopleStateCopyWith(
          PeopleState value, $Res Function(PeopleState) then) =
      _$PeopleStateCopyWithImpl<$Res>;
  $Res call({List<Person> people, Person? selected});

  $PersonCopyWith<$Res>? get selected;
}

/// @nodoc
class _$PeopleStateCopyWithImpl<$Res> implements $PeopleStateCopyWith<$Res> {
  _$PeopleStateCopyWithImpl(this._value, this._then);

  final PeopleState _value;
  // ignore: unused_field
  final $Res Function(PeopleState) _then;

  @override
  $Res call({
    Object? people = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Person?,
    ));
  }

  @override
  $PersonCopyWith<$Res>? get selected {
    if (_value.selected == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.selected!, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc
abstract class _$$_PeopleStateCopyWith<$Res>
    implements $PeopleStateCopyWith<$Res> {
  factory _$$_PeopleStateCopyWith(
          _$_PeopleState value, $Res Function(_$_PeopleState) then) =
      __$$_PeopleStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Person> people, Person? selected});

  @override
  $PersonCopyWith<$Res>? get selected;
}

/// @nodoc
class __$$_PeopleStateCopyWithImpl<$Res> extends _$PeopleStateCopyWithImpl<$Res>
    implements _$$_PeopleStateCopyWith<$Res> {
  __$$_PeopleStateCopyWithImpl(
      _$_PeopleState _value, $Res Function(_$_PeopleState) _then)
      : super(_value, (v) => _then(v as _$_PeopleState));

  @override
  _$_PeopleState get _value => super._value as _$_PeopleState;

  @override
  $Res call({
    Object? people = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$_PeopleState(
      people: people == freezed
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Person?,
    ));
  }
}

/// @nodoc

class _$_PeopleState implements _PeopleState {
  const _$_PeopleState({final List<Person> people = const [], this.selected})
      : _people = people;

  final List<Person> _people;
  @override
  @JsonKey()
  List<Person> get people {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  @override
  final Person? selected;

  @override
  String toString() {
    return 'PeopleState(people: $people, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeopleState &&
            const DeepCollectionEquality().equals(other._people, _people) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_people),
      const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$$_PeopleStateCopyWith<_$_PeopleState> get copyWith =>
      __$$_PeopleStateCopyWithImpl<_$_PeopleState>(this, _$identity);
}

abstract class _PeopleState implements PeopleState {
  const factory _PeopleState(
      {final List<Person> people, final Person? selected}) = _$_PeopleState;

  @override
  List<Person> get people;
  @override
  Person? get selected;
  @override
  @JsonKey(ignore: true)
  _$$_PeopleStateCopyWith<_$_PeopleState> get copyWith =>
      throw _privateConstructorUsedError;
}
