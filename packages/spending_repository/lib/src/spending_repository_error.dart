abstract class SpendingRepositoryException implements Exception {
  final String? message;

  SpendingRepositoryException([this.message]);
  @override
  String toString() => 'SpendingRepositoryException: ${message ?? 'Unknown'}';
}

class SpendingRepositoryArgumentInvalid extends SpendingRepositoryException {
  SpendingRepositoryArgumentInvalid([super.message]);
}

class SpendingRepositoryApiFail extends SpendingRepositoryException {
  SpendingRepositoryApiFail([super.message]);
}

class SpendingRepositoryActionNotVaild extends SpendingRepositoryException {
  SpendingRepositoryActionNotVaild([super.message]);
}

class SpendingRepositoryHasRelationError extends SpendingRepositoryException {
  SpendingRepositoryHasRelationError([super.message]);
}

class SpendingRepositoryHasDuplicationError
    extends SpendingRepositoryException {
  SpendingRepositoryHasDuplicationError([super.message]);
}
