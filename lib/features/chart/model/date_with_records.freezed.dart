// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_with_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DateWithRecords {
  DateTime get date => throw _privateConstructorUsedError;
  List<Record> get records => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateWithRecordsCopyWith<DateWithRecords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateWithRecordsCopyWith<$Res> {
  factory $DateWithRecordsCopyWith(
          DateWithRecords value, $Res Function(DateWithRecords) then) =
      _$DateWithRecordsCopyWithImpl<$Res>;
  $Res call({DateTime date, List<Record> records});
}

/// @nodoc
class _$DateWithRecordsCopyWithImpl<$Res>
    implements $DateWithRecordsCopyWith<$Res> {
  _$DateWithRecordsCopyWithImpl(this._value, this._then);

  final DateWithRecords _value;
  // ignore: unused_field
  final $Res Function(DateWithRecords) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc
abstract class _$$_DateWithRecordsCopyWith<$Res>
    implements $DateWithRecordsCopyWith<$Res> {
  factory _$$_DateWithRecordsCopyWith(
          _$_DateWithRecords value, $Res Function(_$_DateWithRecords) then) =
      __$$_DateWithRecordsCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, List<Record> records});
}

/// @nodoc
class __$$_DateWithRecordsCopyWithImpl<$Res>
    extends _$DateWithRecordsCopyWithImpl<$Res>
    implements _$$_DateWithRecordsCopyWith<$Res> {
  __$$_DateWithRecordsCopyWithImpl(
      _$_DateWithRecords _value, $Res Function(_$_DateWithRecords) _then)
      : super(_value, (v) => _then(v as _$_DateWithRecords));

  @override
  _$_DateWithRecords get _value => super._value as _$_DateWithRecords;

  @override
  $Res call({
    Object? date = freezed,
    Object? records = freezed,
  }) {
    return _then(_$_DateWithRecords(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc

class _$_DateWithRecords implements _DateWithRecords {
  _$_DateWithRecords(
      {required this.date, final List<Record> records = const []})
      : _records = records;

  @override
  final DateTime date;
  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'DateWithRecords(date: $date, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateWithRecords &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  _$$_DateWithRecordsCopyWith<_$_DateWithRecords> get copyWith =>
      __$$_DateWithRecordsCopyWithImpl<_$_DateWithRecords>(this, _$identity);
}

abstract class _DateWithRecords implements DateWithRecords {
  factory _DateWithRecords(
      {required final DateTime date,
      final List<Record> records}) = _$_DateWithRecords;

  @override
  DateTime get date;
  @override
  List<Record> get records;
  @override
  @JsonKey(ignore: true)
  _$$_DateWithRecordsCopyWith<_$_DateWithRecords> get copyWith =>
      throw _privateConstructorUsedError;
}
