import 'package:logger/logger.dart';

Logger _logger = Logger(level: Logger.level);

void logE(
  dynamic message, {
  DateTime? time,
  Object? error,
  StackTrace? stackTrace,
}) =>
    _logger.e(
      message,
      time: time ?? DateTime.now(),
      error: error,
      stackTrace: stackTrace,
    );

void logW(
  dynamic message, {
  DateTime? time,
  Object? error,
  StackTrace? stackTrace,
}) =>
    _logger.w(
      message,
      time: time ?? DateTime.now(),
      error: error,
      stackTrace: stackTrace,
    );

void logI(
  dynamic message, {
  DateTime? time,
  Object? error,
  StackTrace? stackTrace,
}) =>
    _logger.i(
      message,
      time: time ?? DateTime.now(),
      error: error,
      stackTrace: stackTrace,
    );

void logD(
  dynamic message, {
  DateTime? time,
  Object? error,
  StackTrace? stackTrace,
}) =>
    _logger.d(
      message,
      time: time ?? DateTime.now(),
      error: error,
      stackTrace: stackTrace,
    );
