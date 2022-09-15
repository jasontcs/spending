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

String currencyFormat(BuildContext context, num amount) =>
    NumberFormat.simpleCurrency(locale: S.of(context).locale).format(amount);

String percentageFormat(BuildContext context, num value) =>
    NumberFormat.percentPattern(S.of(context).locale).format(value);
