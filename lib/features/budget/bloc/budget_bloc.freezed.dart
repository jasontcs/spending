// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BudgetState {
  DateTime get month => throw _privateConstructorUsedError;
  Map<Category, List<Record>> get categoriesWithRecords =>
      throw _privateConstructorUsedError;
  Currency? get mainCurrency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BudgetStateCopyWith<BudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetStateCopyWith<$Res> {
  factory $BudgetStateCopyWith(
          BudgetState value, $Res Function(BudgetState) then) =
      _$BudgetStateCopyWithImpl<$Res, BudgetState>;
  @useResult
  $Res call(
      {DateTime month,
      Map<Category, List<Record>> categoriesWithRecords,
      Currency? mainCurrency});

  $CurrencyCopyWith<$Res>? get mainCurrency;
}

/// @nodoc
class _$BudgetStateCopyWithImpl<$Res, $Val extends BudgetState>
    implements $BudgetStateCopyWith<$Res> {
  _$BudgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? categoriesWithRecords = null,
    Object? mainCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoriesWithRecords: null == categoriesWithRecords
          ? _value.categoriesWithRecords
          : categoriesWithRecords // ignore: cast_nullable_to_non_nullable
              as Map<Category, List<Record>>,
      mainCurrency: freezed == mainCurrency
          ? _value.mainCurrency
          : mainCurrency // ignore: cast_nullable_to_non_nullable
              as Currency?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res>? get mainCurrency {
    if (_value.mainCurrency == null) {
      return null;
    }

    return $CurrencyCopyWith<$Res>(_value.mainCurrency!, (value) {
      return _then(_value.copyWith(mainCurrency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BudgetStateCopyWith<$Res>
    implements $BudgetStateCopyWith<$Res> {
  factory _$$_BudgetStateCopyWith(
          _$_BudgetState value, $Res Function(_$_BudgetState) then) =
      __$$_BudgetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime month,
      Map<Category, List<Record>> categoriesWithRecords,
      Currency? mainCurrency});

  @override
  $CurrencyCopyWith<$Res>? get mainCurrency;
}

/// @nodoc
class __$$_BudgetStateCopyWithImpl<$Res>
    extends _$BudgetStateCopyWithImpl<$Res, _$_BudgetState>
    implements _$$_BudgetStateCopyWith<$Res> {
  __$$_BudgetStateCopyWithImpl(
      _$_BudgetState _value, $Res Function(_$_BudgetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? categoriesWithRecords = null,
    Object? mainCurrency = freezed,
  }) {
    return _then(_$_BudgetState(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoriesWithRecords: null == categoriesWithRecords
          ? _value._categoriesWithRecords
          : categoriesWithRecords // ignore: cast_nullable_to_non_nullable
              as Map<Category, List<Record>>,
      mainCurrency: freezed == mainCurrency
          ? _value.mainCurrency
          : mainCurrency // ignore: cast_nullable_to_non_nullable
              as Currency?,
    ));
  }
}

/// @nodoc

class _$_BudgetState extends _BudgetState {
  const _$_BudgetState(
      {required this.month,
      final Map<Category, List<Record>> categoriesWithRecords = const {},
      this.mainCurrency})
      : _categoriesWithRecords = categoriesWithRecords,
        super._();

  @override
  final DateTime month;
  final Map<Category, List<Record>> _categoriesWithRecords;
  @override
  @JsonKey()
  Map<Category, List<Record>> get categoriesWithRecords {
    if (_categoriesWithRecords is EqualUnmodifiableMapView)
      return _categoriesWithRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoriesWithRecords);
  }

  @override
  final Currency? mainCurrency;

  @override
  String toString() {
    return 'BudgetState(month: $month, categoriesWithRecords: $categoriesWithRecords, mainCurrency: $mainCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BudgetState &&
            (identical(other.month, month) || other.month == month) &&
            const DeepCollectionEquality()
                .equals(other._categoriesWithRecords, _categoriesWithRecords) &&
            (identical(other.mainCurrency, mainCurrency) ||
                other.mainCurrency == mainCurrency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      month,
      const DeepCollectionEquality().hash(_categoriesWithRecords),
      mainCurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BudgetStateCopyWith<_$_BudgetState> get copyWith =>
      __$$_BudgetStateCopyWithImpl<_$_BudgetState>(this, _$identity);
}

abstract class _BudgetState extends BudgetState {
  const factory _BudgetState(
      {required final DateTime month,
      final Map<Category, List<Record>> categoriesWithRecords,
      final Currency? mainCurrency}) = _$_BudgetState;
  const _BudgetState._() : super._();

  @override
  DateTime get month;
  @override
  Map<Category, List<Record>> get categoriesWithRecords;
  @override
  Currency? get mainCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_BudgetStateCopyWith<_$_BudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}
