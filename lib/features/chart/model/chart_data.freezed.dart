// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$ChartDataCopyWithImpl<$Res, ChartData>;
  @useResult
  $Res call({String x, num y, Color? color});
}

/// @nodoc
class _$ChartDataCopyWithImpl<$Res, $Val extends ChartData>
    implements $ChartDataCopyWith<$Res> {
  _$ChartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChartDataCopyWith<$Res> implements $ChartDataCopyWith<$Res> {
  factory _$$_ChartDataCopyWith(
          _$_ChartData value, $Res Function(_$_ChartData) then) =
      __$$_ChartDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String x, num y, Color? color});
}

/// @nodoc
class __$$_ChartDataCopyWithImpl<$Res>
    extends _$ChartDataCopyWithImpl<$Res, _$_ChartData>
    implements _$$_ChartDataCopyWith<$Res> {
  __$$_ChartDataCopyWithImpl(
      _$_ChartData _value, $Res Function(_$_ChartData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? color = freezed,
  }) {
    return _then(_$_ChartData(
      null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as num,
      freezed == color
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
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
