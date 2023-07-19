// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'records_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordsState {
  List<Record> get records => throw _privateConstructorUsedError;
  TableCalendarConfig get calendarConfig => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordsStateCopyWith<RecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsStateCopyWith<$Res> {
  factory $RecordsStateCopyWith(
          RecordsState value, $Res Function(RecordsState) then) =
      _$RecordsStateCopyWithImpl<$Res, RecordsState>;
  @useResult
  $Res call({List<Record> records, TableCalendarConfig calendarConfig});

  $TableCalendarConfigCopyWith<$Res> get calendarConfig;
}

/// @nodoc
class _$RecordsStateCopyWithImpl<$Res, $Val extends RecordsState>
    implements $RecordsStateCopyWith<$Res> {
  _$RecordsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? calendarConfig = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
      calendarConfig: null == calendarConfig
          ? _value.calendarConfig
          : calendarConfig // ignore: cast_nullable_to_non_nullable
              as TableCalendarConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TableCalendarConfigCopyWith<$Res> get calendarConfig {
    return $TableCalendarConfigCopyWith<$Res>(_value.calendarConfig, (value) {
      return _then(_value.copyWith(calendarConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecordsStateCopyWith<$Res>
    implements $RecordsStateCopyWith<$Res> {
  factory _$$_RecordsStateCopyWith(
          _$_RecordsState value, $Res Function(_$_RecordsState) then) =
      __$$_RecordsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Record> records, TableCalendarConfig calendarConfig});

  @override
  $TableCalendarConfigCopyWith<$Res> get calendarConfig;
}

/// @nodoc
class __$$_RecordsStateCopyWithImpl<$Res>
    extends _$RecordsStateCopyWithImpl<$Res, _$_RecordsState>
    implements _$$_RecordsStateCopyWith<$Res> {
  __$$_RecordsStateCopyWithImpl(
      _$_RecordsState _value, $Res Function(_$_RecordsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? calendarConfig = null,
  }) {
    return _then(_$_RecordsState(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
      calendarConfig: null == calendarConfig
          ? _value.calendarConfig
          : calendarConfig // ignore: cast_nullable_to_non_nullable
              as TableCalendarConfig,
    ));
  }
}

/// @nodoc

class _$_RecordsState implements _RecordsState {
  const _$_RecordsState(
      {final List<Record> records = const [],
      this.calendarConfig = const TableCalendarConfig()})
      : _records = records;

  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  @JsonKey()
  final TableCalendarConfig calendarConfig;

  @override
  String toString() {
    return 'RecordsState(records: $records, calendarConfig: $calendarConfig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordsState &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.calendarConfig, calendarConfig) ||
                other.calendarConfig == calendarConfig));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_records), calendarConfig);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordsStateCopyWith<_$_RecordsState> get copyWith =>
      __$$_RecordsStateCopyWithImpl<_$_RecordsState>(this, _$identity);
}

abstract class _RecordsState implements RecordsState {
  const factory _RecordsState(
      {final List<Record> records,
      final TableCalendarConfig calendarConfig}) = _$_RecordsState;

  @override
  List<Record> get records;
  @override
  TableCalendarConfig get calendarConfig;
  @override
  @JsonKey(ignore: true)
  _$$_RecordsStateCopyWith<_$_RecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TableCalendarConfig {
  DateTime? get focusedDay => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableCalendarConfigCopyWith<TableCalendarConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableCalendarConfigCopyWith<$Res> {
  factory $TableCalendarConfigCopyWith(
          TableCalendarConfig value, $Res Function(TableCalendarConfig) then) =
      _$TableCalendarConfigCopyWithImpl<$Res, TableCalendarConfig>;
  @useResult
  $Res call({DateTime? focusedDay, DateTime? selectedDate});
}

/// @nodoc
class _$TableCalendarConfigCopyWithImpl<$Res, $Val extends TableCalendarConfig>
    implements $TableCalendarConfigCopyWith<$Res> {
  _$TableCalendarConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedDay = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      focusedDay: freezed == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableCalendarConfigCopyWith<$Res>
    implements $TableCalendarConfigCopyWith<$Res> {
  factory _$$_TableCalendarConfigCopyWith(_$_TableCalendarConfig value,
          $Res Function(_$_TableCalendarConfig) then) =
      __$$_TableCalendarConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? focusedDay, DateTime? selectedDate});
}

/// @nodoc
class __$$_TableCalendarConfigCopyWithImpl<$Res>
    extends _$TableCalendarConfigCopyWithImpl<$Res, _$_TableCalendarConfig>
    implements _$$_TableCalendarConfigCopyWith<$Res> {
  __$$_TableCalendarConfigCopyWithImpl(_$_TableCalendarConfig _value,
      $Res Function(_$_TableCalendarConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedDay = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_$_TableCalendarConfig(
      focusedDay: freezed == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_TableCalendarConfig implements _TableCalendarConfig {
  const _$_TableCalendarConfig({this.focusedDay, this.selectedDate});

  @override
  final DateTime? focusedDay;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'TableCalendarConfig(focusedDay: $focusedDay, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableCalendarConfig &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedDay, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableCalendarConfigCopyWith<_$_TableCalendarConfig> get copyWith =>
      __$$_TableCalendarConfigCopyWithImpl<_$_TableCalendarConfig>(
          this, _$identity);
}

abstract class _TableCalendarConfig implements TableCalendarConfig {
  const factory _TableCalendarConfig(
      {final DateTime? focusedDay,
      final DateTime? selectedDate}) = _$_TableCalendarConfig;

  @override
  DateTime? get focusedDay;
  @override
  DateTime? get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$_TableCalendarConfigCopyWith<_$_TableCalendarConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
