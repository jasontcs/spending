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
  DateTime get month => throw _privateConstructorUsedError;
  List<CategoryWithRecords> get categoriesWithRecords =>
      throw _privateConstructorUsedError;
  List<PersonWithRecords> get peopleWithRecords =>
      throw _privateConstructorUsedError;
  List<Record> get records => throw _privateConstructorUsedError;
  DateTime? get trendFocusedDate => throw _privateConstructorUsedError;
  Currency? get mainCurrency => throw _privateConstructorUsedError;

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
      {DateTime month,
      List<CategoryWithRecords> categoriesWithRecords,
      List<PersonWithRecords> peopleWithRecords,
      List<Record> records,
      DateTime? trendFocusedDate,
      Currency? mainCurrency});

  $CurrencyCopyWith<$Res>? get mainCurrency;
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
    Object? records = freezed,
    Object? trendFocusedDate = freezed,
    Object? mainCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoriesWithRecords: categoriesWithRecords == freezed
          ? _value.categoriesWithRecords
          : categoriesWithRecords // ignore: cast_nullable_to_non_nullable
              as List<CategoryWithRecords>,
      peopleWithRecords: peopleWithRecords == freezed
          ? _value.peopleWithRecords
          : peopleWithRecords // ignore: cast_nullable_to_non_nullable
              as List<PersonWithRecords>,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
      trendFocusedDate: trendFocusedDate == freezed
          ? _value.trendFocusedDate
          : trendFocusedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mainCurrency: mainCurrency == freezed
          ? _value.mainCurrency
          : mainCurrency // ignore: cast_nullable_to_non_nullable
              as Currency?,
    ));
  }

  @override
  $CurrencyCopyWith<$Res>? get mainCurrency {
    if (_value.mainCurrency == null) {
      return null;
    }

    return $CurrencyCopyWith<$Res>(_value.mainCurrency!, (value) {
      return _then(_value.copyWith(mainCurrency: value));
    });
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
      {DateTime month,
      List<CategoryWithRecords> categoriesWithRecords,
      List<PersonWithRecords> peopleWithRecords,
      List<Record> records,
      DateTime? trendFocusedDate,
      Currency? mainCurrency});

  @override
  $CurrencyCopyWith<$Res>? get mainCurrency;
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
    Object? records = freezed,
    Object? trendFocusedDate = freezed,
    Object? mainCurrency = freezed,
  }) {
    return _then(_$_ChartState(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoriesWithRecords: categoriesWithRecords == freezed
          ? _value._categoriesWithRecords
          : categoriesWithRecords // ignore: cast_nullable_to_non_nullable
              as List<CategoryWithRecords>,
      peopleWithRecords: peopleWithRecords == freezed
          ? _value._peopleWithRecords
          : peopleWithRecords // ignore: cast_nullable_to_non_nullable
              as List<PersonWithRecords>,
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
      trendFocusedDate: trendFocusedDate == freezed
          ? _value.trendFocusedDate
          : trendFocusedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mainCurrency: mainCurrency == freezed
          ? _value.mainCurrency
          : mainCurrency // ignore: cast_nullable_to_non_nullable
              as Currency?,
    ));
  }
}

/// @nodoc

class _$_ChartState extends _ChartState {
  const _$_ChartState(
      {required this.month,
      final List<CategoryWithRecords> categoriesWithRecords = const [],
      final List<PersonWithRecords> peopleWithRecords = const [],
      final List<Record> records = const [],
      this.trendFocusedDate,
      this.mainCurrency})
      : _categoriesWithRecords = categoriesWithRecords,
        _peopleWithRecords = peopleWithRecords,
        _records = records,
        super._();

  @override
  final DateTime month;
  final List<CategoryWithRecords> _categoriesWithRecords;
  @override
  @JsonKey()
  List<CategoryWithRecords> get categoriesWithRecords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesWithRecords);
  }

  final List<PersonWithRecords> _peopleWithRecords;
  @override
  @JsonKey()
  List<PersonWithRecords> get peopleWithRecords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peopleWithRecords);
  }

  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final DateTime? trendFocusedDate;
  @override
  final Currency? mainCurrency;

  @override
  String toString() {
    return 'ChartState(month: $month, categoriesWithRecords: $categoriesWithRecords, peopleWithRecords: $peopleWithRecords, records: $records, trendFocusedDate: $trendFocusedDate, mainCurrency: $mainCurrency)';
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
                .equals(other._peopleWithRecords, _peopleWithRecords) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            const DeepCollectionEquality()
                .equals(other.trendFocusedDate, trendFocusedDate) &&
            const DeepCollectionEquality()
                .equals(other.mainCurrency, mainCurrency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(_categoriesWithRecords),
      const DeepCollectionEquality().hash(_peopleWithRecords),
      const DeepCollectionEquality().hash(_records),
      const DeepCollectionEquality().hash(trendFocusedDate),
      const DeepCollectionEquality().hash(mainCurrency));

  @JsonKey(ignore: true)
  @override
  _$$_ChartStateCopyWith<_$_ChartState> get copyWith =>
      __$$_ChartStateCopyWithImpl<_$_ChartState>(this, _$identity);
}

abstract class _ChartState extends ChartState {
  const factory _ChartState(
      {required final DateTime month,
      final List<CategoryWithRecords> categoriesWithRecords,
      final List<PersonWithRecords> peopleWithRecords,
      final List<Record> records,
      final DateTime? trendFocusedDate,
      final Currency? mainCurrency}) = _$_ChartState;
  const _ChartState._() : super._();

  @override
  DateTime get month;
  @override
  List<CategoryWithRecords> get categoriesWithRecords;
  @override
  List<PersonWithRecords> get peopleWithRecords;
  @override
  List<Record> get records;
  @override
  DateTime? get trendFocusedDate;
  @override
  Currency? get mainCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_ChartStateCopyWith<_$_ChartState> get copyWith =>
      throw _privateConstructorUsedError;
}
