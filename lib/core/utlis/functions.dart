import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

void appPrint(String msg, [String type = 'i']) {
  if (kDebugMode) {
    var logger = Logger();
    switch (type) {
      case 'i':
        logger.i(msg);
        break;
      case 'w':
        logger.w(msg);
        break;
      case 'e':
        logger.e(msg);
        break;
      default:
        logger.d(msg);
    }
  }
}
