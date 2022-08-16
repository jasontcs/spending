// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'record_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordState {
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Currency> get currencies => throw _privateConstructorUsedError;
  List<Person> get people => throw _privateConstructorUsedError;
  Record? get record => throw _privateConstructorUsedError;
  GlobalKey<FormBuilderState>? get formKey =>
      throw _privateConstructorUsedError;
  AppFormStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordStateCopyWith<RecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordStateCopyWith<$Res> {
  factory $RecordStateCopyWith(
          RecordState value, $Res Function(RecordState) then) =
      _$RecordStateCopyWithImpl<$Res>;
  $Res call(
      {List<Category> categories,
      List<Currency> currencies,
      List<Person> people,
      Record? record,
      GlobalKey<FormBuilderState>? formKey,
      AppFormStatus status});

  $RecordCopyWith<$Res>? get record;
}

/// @nodoc
class _$RecordStateCopyWithImpl<$Res> implements $RecordStateCopyWith<$Res> {
  _$RecordStateCopyWithImpl(this._value, this._then);

  final RecordState _value;
  // ignore: unused_field
  final $Res Function(RecordState) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? currencies = freezed,
    Object? people = freezed,
    Object? record = freezed,
    Object? formKey = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      record: record == freezed
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Record?,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppFormStatus,
    ));
  }

  @override
  $RecordCopyWith<$Res>? get record {
    if (_value.record == null) {
      return null;
    }

    return $RecordCopyWith<$Res>(_value.record!, (value) {
      return _then(_value.copyWith(record: value));
    });
  }
}

/// @nodoc
abstract class _$$_RecordStateCopyWith<$Res>
    implements $RecordStateCopyWith<$Res> {
  factory _$$_RecordStateCopyWith(
          _$_RecordState value, $Res Function(_$_RecordState) then) =
      __$$_RecordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Category> categories,
      List<Currency> currencies,
      List<Person> people,
      Record? record,
      GlobalKey<FormBuilderState>? formKey,
      AppFormStatus status});

  @override
  $RecordCopyWith<$Res>? get record;
}

/// @nodoc
class __$$_RecordStateCopyWithImpl<$Res> extends _$RecordStateCopyWithImpl<$Res>
    implements _$$_RecordStateCopyWith<$Res> {
  __$$_RecordStateCopyWithImpl(
      _$_RecordState _value, $Res Function(_$_RecordState) _then)
      : super(_value, (v) => _then(v as _$_RecordState));

  @override
  _$_RecordState get _value => super._value as _$_RecordState;

  @override
  $Res call({
    Object? categories = freezed,
    Object? currencies = freezed,
    Object? people = freezed,
    Object? record = freezed,
    Object? formKey = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_RecordState(
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      currencies: currencies == freezed
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
      people: people == freezed
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      record: record == freezed
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Record?,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppFormStatus,
    ));
  }
}

/// @nodoc

class _$_RecordState implements _RecordState {
  const _$_RecordState(
      {final List<Category> categories = const [],
      final List<Currency> currencies = const [],
      final List<Person> people = const [],
      this.record,
      this.formKey,
      this.status = AppFormStatus.init})
      : _categories = categories,
        _currencies = currencies,
        _people = people;

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Currency> _currencies;
  @override
  @JsonKey()
  List<Currency> get currencies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  final List<Person> _people;
  @override
  @JsonKey()
  List<Person> get people {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  @override
  final Record? record;
  @override
  final GlobalKey<FormBuilderState>? formKey;
  @override
  @JsonKey()
  final AppFormStatus status;

  @override
  String toString() {
    return 'RecordState(categories: $categories, currencies: $currencies, people: $people, record: $record, formKey: $formKey, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            const DeepCollectionEquality().equals(other._people, _people) &&
            const DeepCollectionEquality().equals(other.record, record) &&
            const DeepCollectionEquality().equals(other.formKey, formKey) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_currencies),
      const DeepCollectionEquality().hash(_people),
      const DeepCollectionEquality().hash(record),
      const DeepCollectionEquality().hash(formKey),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_RecordStateCopyWith<_$_RecordState> get copyWith =>
      __$$_RecordStateCopyWithImpl<_$_RecordState>(this, _$identity);
}

abstract class _RecordState implements RecordState {
  const factory _RecordState(
      {final List<Category> categories,
      final List<Currency> currencies,
      final List<Person> people,
      final Record? record,
      final GlobalKey<FormBuilderState>? formKey,
      final AppFormStatus status}) = _$_RecordState;

  @override
  List<Category> get categories;
  @override
  List<Currency> get currencies;
  @override
  List<Person> get people;
  @override
  Record? get record;
  @override
  GlobalKey<FormBuilderState>? get formKey;
  @override
  AppFormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_RecordStateCopyWith<_$_RecordState> get copyWith =>
      throw _privateConstructorUsedError;
}
