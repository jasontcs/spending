// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_with_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonWithRecords {
  Person get person => throw _privateConstructorUsedError;
  List<Record> get records => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonWithRecordsCopyWith<PersonWithRecords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonWithRecordsCopyWith<$Res> {
  factory $PersonWithRecordsCopyWith(
          PersonWithRecords value, $Res Function(PersonWithRecords) then) =
      _$PersonWithRecordsCopyWithImpl<$Res, PersonWithRecords>;
  @useResult
  $Res call({Person person, List<Record> records});

  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class _$PersonWithRecordsCopyWithImpl<$Res, $Val extends PersonWithRecords>
    implements $PersonWithRecordsCopyWith<$Res> {
  _$PersonWithRecordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = null,
    Object? records = null,
  }) {
    return _then(_value.copyWith(
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonWithRecordsCopyWith<$Res>
    implements $PersonWithRecordsCopyWith<$Res> {
  factory _$$_PersonWithRecordsCopyWith(_$_PersonWithRecords value,
          $Res Function(_$_PersonWithRecords) then) =
      __$$_PersonWithRecordsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Person person, List<Record> records});

  @override
  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class __$$_PersonWithRecordsCopyWithImpl<$Res>
    extends _$PersonWithRecordsCopyWithImpl<$Res, _$_PersonWithRecords>
    implements _$$_PersonWithRecordsCopyWith<$Res> {
  __$$_PersonWithRecordsCopyWithImpl(
      _$_PersonWithRecords _value, $Res Function(_$_PersonWithRecords) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = null,
    Object? records = null,
  }) {
    return _then(_$_PersonWithRecords(
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc

class _$_PersonWithRecords implements _PersonWithRecords {
  _$_PersonWithRecords(
      {required this.person, final List<Record> records = const []})
      : _records = records;

  @override
  final Person person;
  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'PersonWithRecords(person: $person, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonWithRecords &&
            (identical(other.person, person) || other.person == person) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, person, const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonWithRecordsCopyWith<_$_PersonWithRecords> get copyWith =>
      __$$_PersonWithRecordsCopyWithImpl<_$_PersonWithRecords>(
          this, _$identity);
}

abstract class _PersonWithRecords implements PersonWithRecords {
  factory _PersonWithRecords(
      {required final Person person,
      final List<Record> records}) = _$_PersonWithRecords;

  @override
  Person get person;
  @override
  List<Record> get records;
  @override
  @JsonKey(ignore: true)
  _$$_PersonWithRecordsCopyWith<_$_PersonWithRecords> get copyWith =>
      throw _privateConstructorUsedError;
}
