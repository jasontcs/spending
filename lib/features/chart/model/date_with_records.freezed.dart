// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$DateWithRecordsCopyWithImpl<$Res, DateWithRecords>;
  @useResult
  $Res call({DateTime date, List<Record> records});
}

/// @nodoc
class _$DateWithRecordsCopyWithImpl<$Res, $Val extends DateWithRecords>
    implements $DateWithRecordsCopyWith<$Res> {
  _$DateWithRecordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? records = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateWithRecordsCopyWith<$Res>
    implements $DateWithRecordsCopyWith<$Res> {
  factory _$$_DateWithRecordsCopyWith(
          _$_DateWithRecords value, $Res Function(_$_DateWithRecords) then) =
      __$$_DateWithRecordsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, List<Record> records});
}

/// @nodoc
class __$$_DateWithRecordsCopyWithImpl<$Res>
    extends _$DateWithRecordsCopyWithImpl<$Res, _$_DateWithRecords>
    implements _$$_DateWithRecordsCopyWith<$Res> {
  __$$_DateWithRecordsCopyWithImpl(
      _$_DateWithRecords _value, $Res Function(_$_DateWithRecords) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? records = null,
  }) {
    return _then(_$_DateWithRecords(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      records: null == records
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
    if (_records is EqualUnmodifiableListView) return _records;
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
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
