import 'package:intl/intl.dart';

class Utils {
  String dateString(DateTime date) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }
}

extension MapTrySet<K, V> on Map<K, V> {
  void trySet(K key, V? value) {
    if (value != null) {
      this[key] = value;
    }
  }
}
