// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Record {
  String? get id => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  Person get person => throw _privateConstructorUsedError;
  List<Receipt> get receipts => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordCopyWith<Record> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCopyWith<$Res> {
  factory $RecordCopyWith(Record value, $Res Function(Record) then) =
      _$RecordCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      num amount,
      Currency currency,
      Category category,
      Person person,
      List<Receipt> receipts,
      String remarks,
      DateTime dateTime,
      DateTime? createdAt,
      DateTime? updatedAt});

  $CurrencyCopyWith<$Res> get currency;
  $CategoryCopyWith<$Res> get category;
  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class _$RecordCopyWithImpl<$Res> implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._value, this._then);

  final Record _value;
  // ignore: unused_field
  final $Res Function(Record) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? category = freezed,
    Object? person = freezed,
    Object? receipts = freezed,
    Object? remarks = freezed,
    Object? dateTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      receipts: receipts == freezed
          ? _value.receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }

  @override
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value));
    });
  }
}

/// @nodoc
abstract class _$$_RecordCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$$_RecordCopyWith(_$_Record value, $Res Function(_$_Record) then) =
      __$$_RecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      num amount,
      Currency currency,
      Category category,
      Person person,
      List<Receipt> receipts,
      String remarks,
      DateTime dateTime,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class __$$_RecordCopyWithImpl<$Res> extends _$RecordCopyWithImpl<$Res>
    implements _$$_RecordCopyWith<$Res> {
  __$$_RecordCopyWithImpl(_$_Record _value, $Res Function(_$_Record) _then)
      : super(_value, (v) => _then(v as _$_Record));

  @override
  _$_Record get _value => super._value as _$_Record;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? category = freezed,
    Object? person = freezed,
    Object? receipts = freezed,
    Object? remarks = freezed,
    Object? dateTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Record(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      receipts: receipts == freezed
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Record extends _Record {
  _$_Record(
      {this.id,
      required this.amount,
      required this.currency,
      required this.category,
      required this.person,
      required final List<Receipt> receipts,
      required this.remarks,
      required this.dateTime,
      this.createdAt,
      this.updatedAt})
      : _receipts = receipts,
        super._();

  @override
  final String? id;
  @override
  final num amount;
  @override
  final Currency currency;
  @override
  final Category category;
  @override
  final Person person;
  final List<Receipt> _receipts;
  @override
  List<Receipt> get receipts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @override
  final String remarks;
  @override
  final DateTime dateTime;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Record(id: $id, amount: $amount, currency: $currency, category: $category, person: $person, receipts: $receipts, remarks: $remarks, dateTime: $dateTime, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Record &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.person, person) &&
            const DeepCollectionEquality().equals(other._receipts, _receipts) &&
            const DeepCollectionEquality().equals(other.remarks, remarks) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(person),
      const DeepCollectionEquality().hash(_receipts),
      const DeepCollectionEquality().hash(remarks),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_RecordCopyWith<_$_Record> get copyWith =>
      __$$_RecordCopyWithImpl<_$_Record>(this, _$identity);
}

abstract class _Record extends Record {
  factory _Record(
      {final String? id,
      required final num amount,
      required final Currency currency,
      required final Category category,
      required final Person person,
      required final List<Receipt> receipts,
      required final String remarks,
      required final DateTime dateTime,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Record;
  _Record._() : super._();

  @override
  String? get id;
  @override
  num get amount;
  @override
  Currency get currency;
  @override
  Category get category;
  @override
  Person get person;
  @override
  List<Receipt> get receipts;
  @override
  String get remarks;
  @override
  DateTime get dateTime;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_RecordCopyWith<_$_Record> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Currency {
  String? get id => throw _privateConstructorUsedError;
  num get rate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  bool get main => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      num rate,
      String title,
      String flag,
      DateTime? updatedAt,
      bool main});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  final Currency _value;
  // ignore: unused_field
  final $Res Function(Currency) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? rate = freezed,
    Object? title = freezed,
    Object? flag = freezed,
    Object? updatedAt = freezed,
    Object? main = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$$_CurrencyCopyWith(
          _$_Currency value, $Res Function(_$_Currency) then) =
      __$$_CurrencyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      num rate,
      String title,
      String flag,
      DateTime? updatedAt,
      bool main});
}

/// @nodoc
class __$$_CurrencyCopyWithImpl<$Res> extends _$CurrencyCopyWithImpl<$Res>
    implements _$$_CurrencyCopyWith<$Res> {
  __$$_CurrencyCopyWithImpl(
      _$_Currency _value, $Res Function(_$_Currency) _then)
      : super(_value, (v) => _then(v as _$_Currency));

  @override
  _$_Currency get _value => super._value as _$_Currency;

  @override
  $Res call({
    Object? id = freezed,
    Object? rate = freezed,
    Object? title = freezed,
    Object? flag = freezed,
    Object? updatedAt = freezed,
    Object? main = freezed,
  }) {
    return _then(_$_Currency(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Currency implements _Currency {
  _$_Currency(
      {this.id,
      required this.rate,
      required this.title,
      required this.flag,
      this.updatedAt,
      required this.main});

  @override
  final String? id;
  @override
  final num rate;
  @override
  final String title;
  @override
  final String flag;
  @override
  final DateTime? updatedAt;
  @override
  final bool main;

  @override
  String toString() {
    return 'Currency(id: $id, rate: $rate, title: $title, flag: $flag, updatedAt: $updatedAt, main: $main)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Currency &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.main, main));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(main));

  @JsonKey(ignore: true)
  @override
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      __$$_CurrencyCopyWithImpl<_$_Currency>(this, _$identity);
}

abstract class _Currency implements Currency {
  factory _Currency(
      {final String? id,
      required final num rate,
      required final String title,
      required final String flag,
      final DateTime? updatedAt,
      required final bool main}) = _$_Currency;

  @override
  String? get id;
  @override
  num get rate;
  @override
  String get title;
  @override
  String get flag;
  @override
  DateTime? get updatedAt;
  @override
  bool get main;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Category {
  String? get id => throw _privateConstructorUsedError;
  num get budget => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call({String? id, num budget, String title, String icon});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? budget = freezed,
    Object? title = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as num,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  $Res call({String? id, num budget, String title, String icon});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, (v) => _then(v as _$_Category));

  @override
  _$_Category get _value => super._value as _$_Category;

  @override
  $Res call({
    Object? id = freezed,
    Object? budget = freezed,
    Object? title = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_Category(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as num,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Category implements _Category {
  _$_Category(
      {this.id, required this.budget, required this.title, required this.icon});

  @override
  final String? id;
  @override
  final num budget;
  @override
  final String title;
  @override
  final String icon;

  @override
  String toString() {
    return 'Category(id: $id, budget: $budget, title: $title, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.budget, budget) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(budget),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);
}

abstract class _Category implements Category {
  factory _Category(
      {final String? id,
      required final num budget,
      required final String title,
      required final String icon}) = _$_Category;

  @override
  String? get id;
  @override
  num get budget;
  @override
  String get title;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Person {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res>;
  $Res call({String? id, String title});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  final Person _value;
  // ignore: unused_field
  final $Res Function(Person) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$_PersonCopyWith(_$_Person value, $Res Function(_$_Person) then) =
      __$$_PersonCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String title});
}

/// @nodoc
class __$$_PersonCopyWithImpl<$Res> extends _$PersonCopyWithImpl<$Res>
    implements _$$_PersonCopyWith<$Res> {
  __$$_PersonCopyWithImpl(_$_Person _value, $Res Function(_$_Person) _then)
      : super(_value, (v) => _then(v as _$_Person));

  @override
  _$_Person get _value => super._value as _$_Person;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_Person(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Person implements _Person {
  _$_Person({this.id, required this.title});

  @override
  final String? id;
  @override
  final String title;

  @override
  String toString() {
    return 'Person(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Person &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      __$$_PersonCopyWithImpl<_$_Person>(this, _$identity);
}

abstract class _Person implements Person {
  factory _Person({final String? id, required final String title}) = _$_Person;

  @override
  String? get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Receipt {
  SpendingImage get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiptCopyWith<Receipt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCopyWith<$Res> {
  factory $ReceiptCopyWith(Receipt value, $Res Function(Receipt) then) =
      _$ReceiptCopyWithImpl<$Res>;
  $Res call({SpendingImage image});

  $SpendingImageCopyWith<$Res> get image;
}

/// @nodoc
class _$ReceiptCopyWithImpl<$Res> implements $ReceiptCopyWith<$Res> {
  _$ReceiptCopyWithImpl(this._value, this._then);

  final Receipt _value;
  // ignore: unused_field
  final $Res Function(Receipt) _then;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SpendingImage,
    ));
  }

  @override
  $SpendingImageCopyWith<$Res> get image {
    return $SpendingImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReceiptCopyWith<$Res> implements $ReceiptCopyWith<$Res> {
  factory _$$_ReceiptCopyWith(
          _$_Receipt value, $Res Function(_$_Receipt) then) =
      __$$_ReceiptCopyWithImpl<$Res>;
  @override
  $Res call({SpendingImage image});

  @override
  $SpendingImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_ReceiptCopyWithImpl<$Res> extends _$ReceiptCopyWithImpl<$Res>
    implements _$$_ReceiptCopyWith<$Res> {
  __$$_ReceiptCopyWithImpl(_$_Receipt _value, $Res Function(_$_Receipt) _then)
      : super(_value, (v) => _then(v as _$_Receipt));

  @override
  _$_Receipt get _value => super._value as _$_Receipt;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_Receipt(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SpendingImage,
    ));
  }
}

/// @nodoc

class _$_Receipt implements _Receipt {
  _$_Receipt({required this.image});

  @override
  final SpendingImage image;

  @override
  String toString() {
    return 'Receipt(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Receipt &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      __$$_ReceiptCopyWithImpl<_$_Receipt>(this, _$identity);
}

abstract class _Receipt implements Receipt {
  factory _Receipt({required final SpendingImage image}) = _$_Receipt;

  @override
  SpendingImage get image;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpendingImage {
  File? get imageFile => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpendingImageCopyWith<SpendingImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingImageCopyWith<$Res> {
  factory $SpendingImageCopyWith(
          SpendingImage value, $Res Function(SpendingImage) then) =
      _$SpendingImageCopyWithImpl<$Res>;
  $Res call({File? imageFile, String? imageUrl, String? imagePath});
}

/// @nodoc
class _$SpendingImageCopyWithImpl<$Res>
    implements $SpendingImageCopyWith<$Res> {
  _$SpendingImageCopyWithImpl(this._value, this._then);

  final SpendingImage _value;
  // ignore: unused_field
  final $Res Function(SpendingImage) _then;

  @override
  $Res call({
    Object? imageFile = freezed,
    Object? imageUrl = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SpendingImageCopyWith<$Res>
    implements $SpendingImageCopyWith<$Res> {
  factory _$$_SpendingImageCopyWith(
          _$_SpendingImage value, $Res Function(_$_SpendingImage) then) =
      __$$_SpendingImageCopyWithImpl<$Res>;
  @override
  $Res call({File? imageFile, String? imageUrl, String? imagePath});
}

/// @nodoc
class __$$_SpendingImageCopyWithImpl<$Res>
    extends _$SpendingImageCopyWithImpl<$Res>
    implements _$$_SpendingImageCopyWith<$Res> {
  __$$_SpendingImageCopyWithImpl(
      _$_SpendingImage _value, $Res Function(_$_SpendingImage) _then)
      : super(_value, (v) => _then(v as _$_SpendingImage));

  @override
  _$_SpendingImage get _value => super._value as _$_SpendingImage;

  @override
  $Res call({
    Object? imageFile = freezed,
    Object? imageUrl = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_SpendingImage(
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SpendingImage implements _SpendingImage {
  _$_SpendingImage({this.imageFile, this.imageUrl, this.imagePath});

  @override
  final File? imageFile;
  @override
  final String? imageUrl;
  @override
  final String? imagePath;

  @override
  String toString() {
    return 'SpendingImage(imageFile: $imageFile, imageUrl: $imageUrl, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpendingImage &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageFile),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(imagePath));

  @JsonKey(ignore: true)
  @override
  _$$_SpendingImageCopyWith<_$_SpendingImage> get copyWith =>
      __$$_SpendingImageCopyWithImpl<_$_SpendingImage>(this, _$identity);
}

abstract class _SpendingImage implements SpendingImage {
  factory _SpendingImage(
      {final File? imageFile,
      final String? imageUrl,
      final String? imagePath}) = _$_SpendingImage;

  @override
  File? get imageFile;
  @override
  String? get imageUrl;
  @override
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_SpendingImageCopyWith<_$_SpendingImage> get copyWith =>
      throw _privateConstructorUsedError;
}
