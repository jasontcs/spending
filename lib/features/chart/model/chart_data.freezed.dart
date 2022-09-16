// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChartData {
  String get x => throw _privateConstructorUsedError;
  num get y => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartDataCopyWith<ChartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartDataCopyWith<$Res> {
  factory $ChartDataCopyWith(ChartData value, $Res Function(ChartData) then) =
      _$ChartDataCopyWithImpl<$Res>;
  $Res call({String x, num y, Color? color});
}

/// @nodoc
class _$ChartDataCopyWithImpl<$Res> implements $ChartDataCopyWith<$Res> {
  _$ChartDataCopyWithImpl(this._value, this._then);

  final ChartData _value;
  // ignore: unused_field
  final $Res Function(ChartData) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
abstract class _$$_ChartDataCopyWith<$Res> implements $ChartDataCopyWith<$Res> {
  factory _$$_ChartDataCopyWith(
          _$_ChartData value, $Res Function(_$_ChartData) then) =
      __$$_ChartDataCopyWithImpl<$Res>;
  @override
  $Res call({String x, num y, Color? color});
}

/// @nodoc
class __$$_ChartDataCopyWithImpl<$Res> extends _$ChartDataCopyWithImpl<$Res>
    implements _$$_ChartDataCopyWith<$Res> {
  __$$_ChartDataCopyWithImpl(
      _$_ChartData _value, $Res Function(_$_ChartData) _then)
      : super(_value, (v) => _then(v as _$_ChartData));

  @override
  _$_ChartData get _value => super._value as _$_ChartData;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_ChartData(
      x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_ChartData implements _ChartData {
  const _$_ChartData(this.x, this.y, [this.color]);

  @override
  final String x;
  @override
  final num y;
  @override
  final Color? color;

  @override
  String toString() {
    return 'ChartData(x: $x, y: $y, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChartData &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_ChartDataCopyWith<_$_ChartData> get copyWith =>
      __$$_ChartDataCopyWithImpl<_$_ChartData>(this, _$identity);
}

abstract class _ChartData implements ChartData {
  const factory _ChartData(final String x, final num y, [final Color? color]) =
      _$_ChartData;

  @override
  String get x;
  @override
  num get y;
  @override
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_ChartDataCopyWith<_$_ChartData> get copyWith =>
      throw _privateConstructorUsedError;
}
