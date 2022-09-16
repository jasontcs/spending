// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_with_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryWithRecords {
  Category get category => throw _privateConstructorUsedError;
  List<Record> get records => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryWithRecordsCopyWith<CategoryWithRecords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWithRecordsCopyWith<$Res> {
  factory $CategoryWithRecordsCopyWith(
          CategoryWithRecords value, $Res Function(CategoryWithRecords) then) =
      _$CategoryWithRecordsCopyWithImpl<$Res>;
  $Res call({Category category, List<Record> records});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$CategoryWithRecordsCopyWithImpl<$Res>
    implements $CategoryWithRecordsCopyWith<$Res> {
  _$CategoryWithRecordsCopyWithImpl(this._value, this._then);

  final CategoryWithRecords _value;
  // ignore: unused_field
  final $Res Function(CategoryWithRecords) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$$_CategoryWithRecordsCopyWith<$Res>
    implements $CategoryWithRecordsCopyWith<$Res> {
  factory _$$_CategoryWithRecordsCopyWith(_$_CategoryWithRecords value,
          $Res Function(_$_CategoryWithRecords) then) =
      __$$_CategoryWithRecordsCopyWithImpl<$Res>;
  @override
  $Res call({Category category, List<Record> records});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$_CategoryWithRecordsCopyWithImpl<$Res>
    extends _$CategoryWithRecordsCopyWithImpl<$Res>
    implements _$$_CategoryWithRecordsCopyWith<$Res> {
  __$$_CategoryWithRecordsCopyWithImpl(_$_CategoryWithRecords _value,
      $Res Function(_$_CategoryWithRecords) _then)
      : super(_value, (v) => _then(v as _$_CategoryWithRecords));

  @override
  _$_CategoryWithRecords get _value => super._value as _$_CategoryWithRecords;

  @override
  $Res call({
    Object? category = freezed,
    Object? records = freezed,
  }) {
    return _then(_$_CategoryWithRecords(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc

class _$_CategoryWithRecords extends _CategoryWithRecords {
  _$_CategoryWithRecords(
      {required this.category, final List<Record> records = const []})
      : _records = records,
        super._();

  @override
  final Category category;
  final List<Record> _records;
  @override
  @JsonKey()
  List<Record> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'CategoryWithRecords(category: $category, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryWithRecords &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryWithRecordsCopyWith<_$_CategoryWithRecords> get copyWith =>
      __$$_CategoryWithRecordsCopyWithImpl<_$_CategoryWithRecords>(
          this, _$identity);
}

abstract class _CategoryWithRecords extends CategoryWithRecords {
  factory _CategoryWithRecords(
      {required final Category category,
      final List<Record> records}) = _$_CategoryWithRecords;
  _CategoryWithRecords._() : super._();

  @override
  Category get category;
  @override
  List<Record> get records;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryWithRecordsCopyWith<_$_CategoryWithRecords> get copyWith =>
      throw _privateConstructorUsedError;
}
