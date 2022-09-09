// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChartState {
  DateTime? get month => throw _privateConstructorUsedError;
  List<Record> get records => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartStateCopyWith<ChartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartStateCopyWith<$Res> {
  factory $ChartStateCopyWith(
          ChartState value, $Res Function(ChartState) then) =
      _$ChartStateCopyWithImpl<$Res>;
  $Res call({DateTime? month, List<Record> records});
}

/// @nodoc
class _$ChartStateCopyWithImpl<$Res> implements $ChartStateCopyWith<$Res> {
  _$ChartStateCopyWithImpl(this._value, this._then);

  final ChartState _value;
  // ignore: unused_field
  final $Res Function(ChartState) _then;

  @override
  $Res call({
    Object? month = freezed,
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc
abstract class _$$_ChartStateCopyWith<$Res>
    implements $ChartStateCopyWith<$Res> {
  factory _$$_ChartStateCopyWith(
          _$_ChartState value, $Res Function(_$_ChartState) then) =
      __$$_ChartStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? month, List<Record> records});
}

/// @nodoc
class __$$_ChartStateCopyWithImpl<$Res> extends _$ChartStateCopyWithImpl<$Res>
    implements _$$_ChartStateCopyWith<$Res> {
  __$$_ChartStateCopyWithImpl(
      _$_ChartState _value, $Res Function(_$_ChartState) _then)
      : super(_value, (v) => _then(v as _$_ChartState));

  @override
  _$_ChartState get _value => super._value as _$_ChartState;

  @override
  $Res call({
    Object? month = freezed,
    Object? records = freezed,
  }) {
    return _then(_$_ChartState(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc

class _$_ChartState implements _ChartState {
  const _$_ChartState({this.month, final List<Record> records = const []})
      : _records = records;

  @override
  final DateTime? month;
  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'ChartState(month: $month, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChartState &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  _$$_ChartStateCopyWith<_$_ChartState> get copyWith =>
      __$$_ChartStateCopyWithImpl<_$_ChartState>(this, _$identity);
}

abstract class _ChartState implements ChartState {
  const factory _ChartState(
      {final DateTime? month, final List<Record> records}) = _$_ChartState;

  @override
  DateTime? get month;
  @override
  List<Record> get records;
  @override
  @JsonKey(ignore: true)
  _$$_ChartStateCopyWith<_$_ChartState> get copyWith =>
      throw _privateConstructorUsedError;
}
