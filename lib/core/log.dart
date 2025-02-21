import 'package:logger/web.dart';

class Log {
  static final Logger _logger = Logger(printer: PrettyPrinter());

  // debug
  static void d(String message) {
    _logger.d(message);
  }

  // info
  static void i(String message) {
    _logger.i(message);
  }

  // warning
  static void w(String message) {
    _logger.w(message);
  }

  // error
  static void e(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
