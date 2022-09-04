import 'package:intl/intl.dart';

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
