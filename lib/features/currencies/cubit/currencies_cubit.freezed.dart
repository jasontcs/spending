// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currencies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrenciesState {
  List<Currency> get currencies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrenciesStateCopyWith<CurrenciesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesStateCopyWith<$Res> {
  factory $CurrenciesStateCopyWith(
          CurrenciesState value, $Res Function(CurrenciesState) then) =
      _$CurrenciesStateCopyWithImpl<$Res>;
  $Res call({List<Currency> currencies});
}

/// @nodoc
class _$CurrenciesStateCopyWithImpl<$Res>
    implements $CurrenciesStateCopyWith<$Res> {
  _$CurrenciesStateCopyWithImpl(this._value, this._then);

  final CurrenciesState _value;
  // ignore: unused_field
  final $Res Function(CurrenciesState) _then;

  @override
  $Res call({
    Object? currencies = freezed,
  }) {
    return _then(_value.copyWith(
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrenciesStateCopyWith<$Res>
    implements $CurrenciesStateCopyWith<$Res> {
  factory _$$_CurrenciesStateCopyWith(
          _$_CurrenciesState value, $Res Function(_$_CurrenciesState) then) =
      __$$_CurrenciesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Currency> currencies});
}

/// @nodoc
class __$$_CurrenciesStateCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res>
    implements _$$_CurrenciesStateCopyWith<$Res> {
  __$$_CurrenciesStateCopyWithImpl(
      _$_CurrenciesState _value, $Res Function(_$_CurrenciesState) _then)
      : super(_value, (v) => _then(v as _$_CurrenciesState));

  @override
  _$_CurrenciesState get _value => super._value as _$_CurrenciesState;

  @override
  $Res call({
    Object? currencies = freezed,
  }) {
    return _then(_$_CurrenciesState(
      currencies: currencies == freezed
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc

class _$_CurrenciesState implements _CurrenciesState {
  const _$_CurrenciesState({final List<Currency> currencies = const []})
      : _currencies = currencies;

  final List<Currency> _currencies;
  @override
  @JsonKey()
  List<Currency> get currencies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'CurrenciesState(currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrenciesState &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  _$$_CurrenciesStateCopyWith<_$_CurrenciesState> get copyWith =>
      __$$_CurrenciesStateCopyWithImpl<_$_CurrenciesState>(this, _$identity);
}

abstract class _CurrenciesState implements CurrenciesState {
  const factory _CurrenciesState({final List<Currency> currencies}) =
      _$_CurrenciesState;

  @override
  List<Currency> get currencies;
  @override
  @JsonKey(ignore: true)
  _$$_CurrenciesStateCopyWith<_$_CurrenciesState> get copyWith =>
      throw _privateConstructorUsedError;
}
