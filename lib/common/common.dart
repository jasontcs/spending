import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../generated/l10n.dart';

enum AppFormStatus {
  init,
  fetching,
  idle,
  unsaved,
  posting,
  error;

  bool get isBusy =>
      this == AppFormStatus.fetching || this == AppFormStatus.posting;
}

extension MapTrySet<K, V> on Map<K, V> {
  void trySet(K key, V? value) {
    if (value != null) {
      this[key] = value;
    }
  }
}

String currencyFormat(BuildContext context, num amount, [String? name]) =>
    NumberFormat.simpleCurrency(
      locale: S.of(context).locale,
      name: name,
      decimalDigits: 1,
    ).format(amount);

String percentageFormat(BuildContext context, num? value) =>
    NumberFormat.percentPattern(S.of(context).locale).format(value);

class AppFormBuilderValidators {
  static FormFieldValidator<T> positiveNum<T>({
    required bool allowZero,
    String? errorText,
  }) =>
      (T? value) {
        num? numVal;
        if (value is String) {
          numVal = num.tryParse(value);
        } else if (value is num) {
          numVal = value;
        }
        return (allowZero ? (numVal ?? 0) >= 0 : (numVal ?? 0) > 0)
            ? null
            : S.current.error_num_not_larger_than_0;
      };
}
