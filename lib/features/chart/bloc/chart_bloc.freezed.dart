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
  Map<Category, List<Record>> get categoriesWithRecords =>
      throw _privateConstructorUsedError;
  Map<Person, List<Record>> get peopleWithRecords =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartStateCopyWith<ChartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartStateCopyWith<$Res> {
  factory $ChartStateCopyWith(
          ChartState value, $Res Function(ChartState) then) =
      _$ChartStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime? month,
      Map<Category, List<Record>> categoriesWithRecords,
      Map<Person, List<Record>> peopleWithRecords});
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
    Object? categoriesWithRecords = freezed,
    Object? peopleWithRecords = freezed,
  }) {
    return _then(_value.copyWith(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoriesWithRecords: categoriesWithRecords == freezed
          ? _value.categoriesWithRecords
          : categoriesWithRecords // ignore: cast_nullable_to_non_nullable
              as Map<Category, List<Record>>,
      peopleWithRecords: peopleWithRecords == freezed
          ? _value.peopleWithRecords
          : peopleWithRecords // ignore: cast_nullable_to_non_nullable
              as Map<Person, List<Record>>,
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
  $Res call(
      {DateTime? month,
      Map<Category, List<Record>> categoriesWithRecords,
      Map<Person, List<Record>> peopleWithRecords});
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
    Object? categoriesWithRecords = freezed,
    Object? peopleWithRecords = freezed,
  }) {
    return _then(_$_ChartState(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoriesWithRecords: categoriesWithRecords == freezed
          ? _value._categoriesWithRecords
          : categoriesWithRecords // ignore: cast_nullable_to_non_nullable
              as Map<Category, List<Record>>,
      peopleWithRecords: peopleWithRecords == freezed
          ? _value._peopleWithRecords
          : peopleWithRecords // ignore: cast_nullable_to_non_nullable
              as Map<Person, List<Record>>,
    ));
  }
}

/// @nodoc

class _$_ChartState extends _ChartState {
  const _$_ChartState(
      {this.month,
      final Map<Category, List<Record>> categoriesWithRecords = const {},
      final Map<Person, List<Record>> peopleWithRecords = const {}})
      : _categoriesWithRecords = categoriesWithRecords,
        _peopleWithRecords = peopleWithRecords,
        super._();

  @override
  final DateTime? month;
  final Map<Category, List<Record>> _categoriesWithRecords;
  @override
  @JsonKey()
  Map<Category, List<Record>> get categoriesWithRecords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoriesWithRecords);
  }

  final Map<Person, List<Record>> _peopleWithRecords;
  @override
  @JsonKey()
  Map<Person, List<Record>> get peopleWithRecords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_peopleWithRecords);
  }

  @override
  String toString() {
    return 'ChartState(month: $month, categoriesWithRecords: $categoriesWithRecords, peopleWithRecords: $peopleWithRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChartState &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality()
                .equals(other._categoriesWithRecords, _categoriesWithRecords) &&
            const DeepCollectionEquality()
                .equals(other._peopleWithRecords, _peopleWithRecords));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(_categoriesWithRecords),
      const DeepCollectionEquality().hash(_peopleWithRecords));

  @JsonKey(ignore: true)
  @override
  _$$_ChartStateCopyWith<_$_ChartState> get copyWith =>
      __$$_ChartStateCopyWithImpl<_$_ChartState>(this, _$identity);
}

abstract class _ChartState extends ChartState {
  const factory _ChartState(
      {final DateTime? month,
      final Map<Category, List<Record>> categoriesWithRecords,
      final Map<Person, List<Record>> peopleWithRecords}) = _$_ChartState;
  const _ChartState._() : super._();

  @override
  DateTime? get month;
  @override
  Map<Category, List<Record>> get categoriesWithRecords;
  @override
  Map<Person, List<Record>> get peopleWithRecords;
  @override
  @JsonKey(ignore: true)
  _$$_ChartStateCopyWith<_$_ChartState> get copyWith =>
      throw _privateConstructorUsedError;
}
