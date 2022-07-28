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
  double get amount => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  List<Person> get people => throw _privateConstructorUsedError;
  List<Receipt> get receipts => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordCopyWith<Record> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCopyWith<$Res> {
  factory $RecordCopyWith(Record value, $Res Function(Record) then) =
      _$RecordCopyWithImpl<$Res>;
  $Res call(
      {double amount,
      Currency currency,
      Category category,
      List<Person> people,
      List<Receipt> receipts,
      String remarks,
      DateTime dateTime});

  $CurrencyCopyWith<$Res> get currency;
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$RecordCopyWithImpl<$Res> implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._value, this._then);

  final Record _value;
  // ignore: unused_field
  final $Res Function(Record) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
    Object? category = freezed,
    Object? people = freezed,
    Object? receipts = freezed,
    Object? remarks = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>,
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
}

/// @nodoc
abstract class _$$_RecordCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$$_RecordCopyWith(_$_Record value, $Res Function(_$_Record) then) =
      __$$_RecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {double amount,
      Currency currency,
      Category category,
      List<Person> people,
      List<Receipt> receipts,
      String remarks,
      DateTime dateTime});

  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $CategoryCopyWith<$Res> get category;
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
    Object? amount = freezed,
    Object? currency = freezed,
    Object? category = freezed,
    Object? people = freezed,
    Object? receipts = freezed,
    Object? remarks = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$_Record(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      people: people == freezed
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>,
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
    ));
  }
}

/// @nodoc

class _$_Record implements _Record {
  const _$_Record(
      {required this.amount,
      required this.currency,
      required this.category,
      required final List<Person> people,
      required final List<Receipt> receipts,
      required this.remarks,
      required this.dateTime})
      : _people = people,
        _receipts = receipts;

  @override
  final double amount;
  @override
  final Currency currency;
  @override
  final Category category;
  final List<Person> _people;
  @override
  List<Person> get people {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

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
  String toString() {
    return 'Record(amount: $amount, currency: $currency, category: $category, people: $people, receipts: $receipts, remarks: $remarks, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Record &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other._people, _people) &&
            const DeepCollectionEquality().equals(other._receipts, _receipts) &&
            const DeepCollectionEquality().equals(other.remarks, remarks) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(_people),
      const DeepCollectionEquality().hash(_receipts),
      const DeepCollectionEquality().hash(remarks),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$$_RecordCopyWith<_$_Record> get copyWith =>
      __$$_RecordCopyWithImpl<_$_Record>(this, _$identity);
}

abstract class _Record implements Record {
  const factory _Record(
      {required final double amount,
      required final Currency currency,
      required final Category category,
      required final List<Person> people,
      required final List<Receipt> receipts,
      required final String remarks,
      required final DateTime dateTime}) = _$_Record;

  @override
  double get amount;
  @override
  Currency get currency;
  @override
  Category get category;
  @override
  List<Person> get people;
  @override
  List<Receipt> get receipts;
  @override
  String get remarks;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_RecordCopyWith<_$_Record> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Currency {
  double get rate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;
  List<Record> get records => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res>;
  $Res call({double rate, String title, String flag, List<Record> records});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  final Currency _value;
  // ignore: unused_field
  final $Res Function(Currency) _then;

  @override
  $Res call({
    Object? rate = freezed,
    Object? title = freezed,
    Object? flag = freezed,
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$$_CurrencyCopyWith(
          _$_Currency value, $Res Function(_$_Currency) then) =
      __$$_CurrencyCopyWithImpl<$Res>;
  @override
  $Res call({double rate, String title, String flag, List<Record> records});
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
    Object? rate = freezed,
    Object? title = freezed,
    Object? flag = freezed,
    Object? records = freezed,
  }) {
    return _then(_$_Currency(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc

class _$_Currency implements _Currency {
  const _$_Currency(
      {required this.rate,
      required this.title,
      required this.flag,
      required final List<Record> records})
      : _records = records;

  @override
  final double rate;
  @override
  final String title;
  @override
  final String flag;
  final List<Record> _records;
  @override
  List<Record> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'Currency(rate: $rate, title: $title, flag: $flag, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Currency &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      __$$_CurrencyCopyWithImpl<_$_Currency>(this, _$identity);
}

abstract class _Currency implements Currency {
  const factory _Currency(
      {required final double rate,
      required final String title,
      required final String flag,
      required final List<Record> records}) = _$_Currency;

  @override
  double get rate;
  @override
  String get title;
  @override
  String get flag;
  @override
  List<Record> get records;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Category {
  double get budget => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<Record> get records => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {double budget, String title, String imageUrl, List<Record> records});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? budget = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {double budget, String title, String imageUrl, List<Record> records});
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
    Object? budget = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? records = freezed,
  }) {
    return _then(_$_Category(
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc

class _$_Category implements _Category {
  const _$_Category(
      {required this.budget,
      required this.title,
      required this.imageUrl,
      required final List<Record> records})
      : _records = records;

  @override
  final double budget;
  @override
  final String title;
  @override
  final String imageUrl;
  final List<Record> _records;
  @override
  List<Record> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'Category(budget: $budget, title: $title, imageUrl: $imageUrl, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            const DeepCollectionEquality().equals(other.budget, budget) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(budget),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);
}

abstract class _Category implements Category {
  const factory _Category(
      {required final double budget,
      required final String title,
      required final String imageUrl,
      required final List<Record> records}) = _$_Category;

  @override
  double get budget;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  List<Record> get records;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Person {
  String get title => throw _privateConstructorUsedError;
  List<Record> get records => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res>;
  $Res call({String title, List<Record> records});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  final Person _value;
  // ignore: unused_field
  final $Res Function(Person) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$_PersonCopyWith(_$_Person value, $Res Function(_$_Person) then) =
      __$$_PersonCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<Record> records});
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
    Object? title = freezed,
    Object? records = freezed,
  }) {
    return _then(_$_Person(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      records: records == freezed
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
    ));
  }
}

/// @nodoc

class _$_Person implements _Person {
  const _$_Person({required this.title, required final List<Record> records})
      : _records = records;

  @override
  final String title;
  final List<Record> _records;
  @override
  List<Record> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  String toString() {
    return 'Person(title: $title, records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Person &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_records));

  @JsonKey(ignore: true)
  @override
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      __$$_PersonCopyWithImpl<_$_Person>(this, _$identity);
}

abstract class _Person implements Person {
  const factory _Person(
      {required final String title,
      required final List<Record> records}) = _$_Person;

  @override
  String get title;
  @override
  List<Record> get records;
  @override
  @JsonKey(ignore: true)
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Receipt {
  String get imageUrl => throw _privateConstructorUsedError;
  Record get record => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiptCopyWith<Receipt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCopyWith<$Res> {
  factory $ReceiptCopyWith(Receipt value, $Res Function(Receipt) then) =
      _$ReceiptCopyWithImpl<$Res>;
  $Res call({String imageUrl, Record record});

  $RecordCopyWith<$Res> get record;
}

/// @nodoc
class _$ReceiptCopyWithImpl<$Res> implements $ReceiptCopyWith<$Res> {
  _$ReceiptCopyWithImpl(this._value, this._then);

  final Receipt _value;
  // ignore: unused_field
  final $Res Function(Receipt) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? record = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      record: record == freezed
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Record,
    ));
  }

  @override
  $RecordCopyWith<$Res> get record {
    return $RecordCopyWith<$Res>(_value.record, (value) {
      return _then(_value.copyWith(record: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReceiptCopyWith<$Res> implements $ReceiptCopyWith<$Res> {
  factory _$$_ReceiptCopyWith(
          _$_Receipt value, $Res Function(_$_Receipt) then) =
      __$$_ReceiptCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, Record record});

  @override
  $RecordCopyWith<$Res> get record;
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
    Object? imageUrl = freezed,
    Object? record = freezed,
  }) {
    return _then(_$_Receipt(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      record: record == freezed
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Record,
    ));
  }
}

/// @nodoc

class _$_Receipt implements _Receipt {
  const _$_Receipt({required this.imageUrl, required this.record});

  @override
  final String imageUrl;
  @override
  final Record record;

  @override
  String toString() {
    return 'Receipt(imageUrl: $imageUrl, record: $record)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Receipt &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.record, record));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(record));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      __$$_ReceiptCopyWithImpl<_$_Receipt>(this, _$identity);
}

abstract class _Receipt implements Receipt {
  const factory _Receipt(
      {required final String imageUrl,
      required final Record record}) = _$_Receipt;

  @override
  String get imageUrl;
  @override
  Record get record;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      throw _privateConstructorUsedError;
}
