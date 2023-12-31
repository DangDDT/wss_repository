import 'package:flutter/foundation.dart';
import 'package:talker/talker.dart';
import 'package:wss_repository/wss_repository.dart';

class Logger {
  static final TalkerLoggerSettings _settings = TalkerLoggerSettings(
    colors: {
      LogLevel.info: AnsiPen()..white(),
      LogLevel.warning: AnsiPen()..yellow(),
      LogLevel.error: AnsiPen()..red(),
      LogLevel.critical: AnsiPen()..rgb(r: 255, g: 165, b: 0),
    },
  );

  static final _talker = Talker(
    logger: TalkerLogger(
      settings: _settings,
    ),
  );

  static final String _tag = '${WssRepository.tag}_Logger';

  static String getLogMessage(String message, String code) {
    final logCode = "🚨 [$_tag|$code]";
    return "$logCode|$message";
  }

  static void log(
    String message, {
    Object? error,
    String? name,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      final logMessage = getLogMessage(message, name ?? "LOG");
      _talker.error(
        logMessage,
        error,
        stackTrace,
      );
    }
    return;
  }

  static void logInfo(
    String message, {
    String name = "LOG",
    Object? exception,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      final logMessage = "[$_tag|$name]|$message";
      _talker.info(
        logMessage,
        exception,
        stackTrace,
      );
    }
    return;
  }

  static void logCritical(
    String message, {
    String name = "LOG",
    Object? exception,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      final logMessage = "❌ [$_tag|$name]|$message";
      _talker.critical(
        logMessage,
        exception,
        stackTrace,
      );
    }
    return;
  }

  static void logWarning(
    String message, {
    String name = "LOG",
    Object? exception,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      final logMessage = "⚠️ [$_tag|$name]|$message";
      _talker.warning(
        logMessage,
        exception,
        stackTrace,
      );
    }
    return;
  }

  static void logOK(
    String message, {
    String name = "LOG",
    Object? exception,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      final logMessage = "✅ [$_tag|$name]|$message";
      _talker.good(
        logMessage,
        exception,
        stackTrace,
      );
    }
    return;
  }
}
