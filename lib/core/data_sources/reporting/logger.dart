import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:sentry/sentry.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

// Start of Selection
final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 2,
    errorMethodCount: 8,
    noBoxingByDefault: !kDebugMode,
    lineLength: 120,
    colors: false, // Disable colors to prevent unwanted console output
    printEmojis: true,
    dateTimeFormat: DateTimeFormat.dateAndTime,
  ),
);

class AppLogger {
  final String name;
  static LogLevel _minimumLogLevel = LogLevel.debug; // Default to most verbose

  const AppLogger(this.name);

  static void setMinimumLogLevel(String levelName) {
    _minimumLogLevel = LogLevel.values.firstWhere(
      (level) => level.name == levelName.toLowerCase(),
      orElse: () => LogLevel.debug,
    );

    print('[AppLogger] Minimum log level set to: "${_minimumLogLevel.name}"');
  }

  bool _shouldLog(LogLevel level) {
    return level.index >= _minimumLogLevel.index;
  }

  String _prefixMessage(dynamic message) => '[$name] ${message.toString()}';
  String _addDataToMessage(dynamic message, {Map<String, dynamic>? data}) =>
      '${_prefixMessage(message)} ${data?.toString()}';

  void _forwardToSentry(
    dynamic message,
    SentryLevel level, {
    Map<String, dynamic>? data,
    StackTrace? stackTrace,
  }) {
    Sentry.captureMessage(
      _prefixMessage(message.toString()),
      level: level,
      withScope: (scope) {
        scope.setContexts('logger_name', name);
        if (data != null) {
          scope.setContexts('additional_data', data);
        }
        if (stackTrace != null) {
          scope.setContexts('stackTrace', stackTrace.toString());
        }
      },
    );
  }

  void debug(
    dynamic message, {
    Map<String, dynamic>? data,
    bool forward = false,
  }) {
    if (!_shouldLog(LogLevel.debug)) return;
    logger.d(_addDataToMessage(message, data: data));
    if (forward) {
      _forwardToSentry(message, SentryLevel.debug, data: data);
    }
  }

  void info(
    dynamic message, {
    Map<String, dynamic>? data,
    bool forward = false,
  }) {
    if (!_shouldLog(LogLevel.info)) return;
    logger.i(_addDataToMessage(message, data: data));
    if (forward) {
      _forwardToSentry(message, SentryLevel.info, data: data);
    }
  }

  void warning(
    dynamic message, {
    Map<String, dynamic>? data,
    bool forward = false,
    StackTrace? stackTrace,
  }) {
    if (!_shouldLog(LogLevel.warning)) return;
    logger.w(_addDataToMessage(message, data: data));
    if (forward) {
      _forwardToSentry(message, SentryLevel.warning, data: data, stackTrace: stackTrace);
    }
  }

  void error(
    dynamic message, {
    dynamic error,
    StackTrace? stackTrace,
    Map<String, dynamic>? data,
  }) {
    if (!_shouldLog(LogLevel.error)) return;
    logger.e(
      _addDataToMessage(message, data: data),
      error: error,
      stackTrace: stackTrace,
      time: DateTime.now(),
    );

    // Sentry integration
    if (error != null) {
      Sentry.captureException(
        error,
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setContexts('message', _prefixMessage(message));
          scope.setContexts('logger_name', name);
          if (data != null) {
            scope.setContexts('additional_data', data);
          }
        },
      );
    } else {
      _forwardToSentry(message, SentryLevel.error, stackTrace: stackTrace, data: data);
    }
  }

  // Convenience static method for quick one-off logging
  static void log(
    String loggerName,
    dynamic message, {
    LogLevel level = LogLevel.debug,
    dynamic error,
    StackTrace? stackTrace,
    Map<String, dynamic>? data,
    bool forward = false,
  }) {
    final logger = AppLogger(loggerName);
    switch (level) {
      case LogLevel.debug:
        logger.debug(message, data: data, forward: forward);
      case LogLevel.info:
        logger.info(message, data: data, forward: forward);
      case LogLevel.warning:
        logger.warning(message, data: data, forward: forward, stackTrace: stackTrace);
      case LogLevel.error:
        logger.error(message, error: error, stackTrace: stackTrace, data: data);
    }
  }
}

enum LogLevel {
  debug,
  info,
  warning,
  error;

  static LogLevel fromString(String value) {
    return LogLevel.values.firstWhere(
      (level) => level.name == value.toLowerCase(),
      orElse: () => LogLevel.debug,
    );
  }
}
