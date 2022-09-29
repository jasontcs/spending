import 'package:flutter/material.dart';

import '../../../common/common.dart';

class Budget {
  Budget({required this.total, this.used = 0});

  final num total;
  final num used;

  num get balance => total - used;

  bool get isPositive => !balance.isNegative;

  double? get percent => total != 0 ? balance / total : null;

  double get percentForIndicator =>
      (percent?.abs() ?? 0) > 1 ? 1 : percent?.abs() ?? 0;

  String? percentString(BuildContext context) =>
      percent != null ? percentageFormat(context, percent) : null;
}
