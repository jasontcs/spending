// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CategoryWithRecordsCopyWithImpl<$Res, CategoryWithRecords>;
  @useResult
  $Res call({Category category, List<Record> records});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$CategoryWithRecordsCopyWithImpl<$Res, $Val extends CategoryWithRecords>
    implements $CategoryWithRecordsCopyWith<$Res> {
  _$CategoryWithRecordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? records = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
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
  @useResult
  $Res call({Category category, List<Record> records});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$_CategoryWithRecordsCopyWithImpl<$Res>
    extends _$CategoryWithRecordsCopyWithImpl<$Res, _$_CategoryWithRecords>
    implements _$$_CategoryWithRecordsCopyWith<$Res> {
  __$$_CategoryWithRecordsCopyWithImpl(_$_CategoryWithRecords _value,
      $Res Function(_$_CategoryWithRecords) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? records = null,
  }) {
    return _then(_$_CategoryWithRecords(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      records: null == records
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
    if (_records is EqualUnmodifiableListView) return _records;
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
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, category, const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
