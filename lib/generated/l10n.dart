// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `zh_HK`
  String get locale {
    return Intl.message(
      'zh_HK',
      name: 'locale',
      desc: '',
      args: [],
    );
  }

  /// `記帳HK`
  String get app_title {
    return Intl.message(
      '記帳HK',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `登入`
  String get sign_in {
    return Intl.message(
      '登入',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `記錄`
  String get record {
    return Intl.message(
      '記錄',
      name: 'record',
      desc: '',
      args: [],
    );
  }

  /// `沒有記錄`
  String get no_records {
    return Intl.message(
      '沒有記錄',
      name: 'no_records',
      desc: '',
      args: [],
    );
  }

  /// `日期`
  String get date {
    return Intl.message(
      '日期',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `金額`
  String get amount {
    return Intl.message(
      '金額',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `類別`
  String get category {
    return Intl.message(
      '類別',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `新類別`
  String get new_category {
    return Intl.message(
      '新類別',
      name: 'new_category',
      desc: '',
      args: [],
    );
  }

  /// `成員`
  String get person {
    return Intl.message(
      '成員',
      name: 'person',
      desc: '',
      args: [],
    );
  }

  /// `新成員`
  String get new_person {
    return Intl.message(
      '新成員',
      name: 'new_person',
      desc: '',
      args: [],
    );
  }

  /// `未上載`
  String get draft {
    return Intl.message(
      '未上載',
      name: 'draft',
      desc: '',
      args: [],
    );
  }

  /// `已上載`
  String get created {
    return Intl.message(
      '已上載',
      name: 'created',
      desc: '',
      args: [],
    );
  }

  /// `已更新`
  String get updated {
    return Intl.message(
      '已更新',
      name: 'updated',
      desc: '',
      args: [],
    );
  }

  /// `已刪除`
  String get deleted {
    return Intl.message(
      '已刪除',
      name: 'deleted',
      desc: '',
      args: [],
    );
  }

  /// `儲存`
  String get save {
    return Intl.message(
      '儲存',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `預算`
  String get budget {
    return Intl.message(
      '預算',
      name: 'budget',
      desc: '',
      args: [],
    );
  }

  /// `分析`
  String get chart {
    return Intl.message(
      '分析',
      name: 'chart',
      desc: '',
      args: [],
    );
  }

  /// `設定`
  String get setting {
    return Intl.message(
      '設定',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `yyyy年M月d日`
  String get date_format_pattern {
    return Intl.message(
      'yyyy年M月d日',
      name: 'date_format_pattern',
      desc: '',
      args: [],
    );
  }

  /// `貨幣`
  String get currency {
    return Intl.message(
      '貨幣',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `備註`
  String get remark {
    return Intl.message(
      '備註',
      name: 'remark',
      desc: '',
      args: [],
    );
  }

  /// `收據`
  String get receipts {
    return Intl.message(
      '收據',
      name: 'receipts',
      desc: '',
      args: [],
    );
  }

  /// `相機`
  String get camera {
    return Intl.message(
      '相機',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `相簿`
  String get gallery {
    return Intl.message(
      '相簿',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `確定`
  String get calculator_enter {
    return Intl.message(
      '確定',
      name: 'calculator_enter',
      desc: '',
      args: [],
    );
  }

  /// `比例`
  String get ratio {
    return Intl.message(
      '比例',
      name: 'ratio',
      desc: '',
      args: [],
    );
  }

  /// `支出`
  String get spent {
    return Intl.message(
      '支出',
      name: 'spent',
      desc: '',
      args: [],
    );
  }

  /// `餘額`
  String get balance {
    return Intl.message(
      '餘額',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `未設定`
  String get not_set {
    return Intl.message(
      '未設定',
      name: 'not_set',
      desc: '',
      args: [],
    );
  }

  /// `名稱`
  String get name {
    return Intl.message(
      '名稱',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `圖示`
  String get icon {
    return Intl.message(
      '圖示',
      name: 'icon',
      desc: '',
      args: [],
    );
  }

  /// `數值需要正數`
  String get error_num_not_larger_than_0 {
    return Intl.message(
      '數值需要正數',
      name: 'error_num_not_larger_than_0',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
