library spending_logger;

import 'dart:developer' as developer;

import 'package:logging/logging.dart';

class SpendingLogger {
  SpendingLogger(String name) : _logger = Logger(name);
  SpendingLogger.type(Object type)
      : _logger = Logger(type.runtimeType.toString());

  static void setup() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      developer.log(
        '${record.level.name}: ${record.time}: ${record.message}',
        time: record.time,
        sequenceNumber: record.sequenceNumber,
        level: record.level.value,
        name: record.loggerName,
        zone: record.zone,
        error: record.error,
        stackTrace: record.stackTrace,
      );
    });
  }

  final Logger _logger;

  void e(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.severe(_coloredLog(message, '31'), error, stackTrace);
  void i(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.info(_coloredLog(message, '32'), error, stackTrace);
  void d(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.fine(_coloredLog(message, '35'), error, stackTrace);

  String _coloredLog(String message, String colorCode) =>
      '\x1b[${colorCode}m$message\x1b[0m';
}
