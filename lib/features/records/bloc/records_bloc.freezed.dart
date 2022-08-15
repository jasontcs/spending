// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  @JsonKey(ignore: true)
  $RecordsStateCopyWith<RecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsStateCopyWith<$Res> {
  factory $RecordsStateCopyWith(
          RecordsState value, $Res Function(RecordsState) then) =
      _$RecordsStateCopyWithImpl<$Res>;
  $Res call({List<Record> records});
}

/// @nodoc
class _$RecordsStateCopyWithImpl<$Res> implements $RecordsStateCopyWith<$Res> {
  _$RecordsStateCopyWithImpl(this._value, this._then);

  final RecordsState _value;
  // ignore: unused_field
  final $Res Function(RecordsState) _then;

  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc
abstract class _$$_RecordsStateCopyWith<$Res>
    implements $RecordsStateCopyWith<$Res> {
  factory _$$_RecordsStateCopyWith(
          _$_RecordsState value, $Res Function(_$_RecordsState) then) =
      __$$_RecordsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Record> records});
}

/// @nodoc
class __$$_RecordsStateCopyWithImpl<$Res>
    extends _$RecordsStateCopyWithImpl<$Res>
    implements _$$_RecordsStateCopyWith<$Res> {
  __$$_RecordsStateCopyWithImpl(
      _$_RecordsState _value, $Res Function(_$_RecordsState) _then)
      : super(_value, (v) => _then(v as _$_RecordsState));

  @override
  _$_RecordsState get _value => super._value as _$_RecordsState;

  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_$_RecordsState(
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc

class _$_RecordsState implements _RecordsState {
  const _$_RecordsState({final List<Record> records = const []})
      : _records = records;

  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'RecordsState(records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordsState &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  _$$_RecordsStateCopyWith<_$_RecordsState> get copyWith =>
      __$$_RecordsStateCopyWithImpl<_$_RecordsState>(this, _$identity);
}

abstract class _RecordsState implements RecordsState {
  const factory _RecordsState({final List<Record> records}) = _$_RecordsState;

  @override
  List<Record> get records;
  @override
  @JsonKey(ignore: true)
  _$$_RecordsStateCopyWith<_$_RecordsState> get copyWith =>
      throw _privateConstructorUsedError;
}
