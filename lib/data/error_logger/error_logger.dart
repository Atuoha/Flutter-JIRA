import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

abstract class ParseErrorLogger {
  void log(String error);

  void logError(Object e, StackTrace s, RequestOptions options) {}
}

class LoggerParseErrorLogger implements ParseErrorLogger {
  final Logger _logger = Logger();

  @override
  void log(String error) {
    _logger.e("Parse Error: $error");
  }

  @override
  void logError(dynamic e, StackTrace s, RequestOptions options) {
    _logger.e("Parse Error: $e");
  }
}
