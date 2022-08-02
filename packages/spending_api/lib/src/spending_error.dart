abstract class SpendingApiException implements Exception {
  final String? message;

  SpendingApiException([this.message]);
  @override
  String toString() => 'SpendingApiExceptionException: ${message ?? 'Unknown'}';
}

class SpendingApiFail extends SpendingApiException {
  SpendingApiFail([String? message]) : super(message);
}

class SpendingApiNotFound extends SpendingApiException {}

class SpendingApiNotAllow extends SpendingApiException {}
