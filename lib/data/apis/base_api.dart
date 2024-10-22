import 'package:get/get.dart';

import '../../core/core.dart';

class AppApi extends GetConnect {
  // static AppApi? _instance;
  // AppApi._();
  // static AppApi get instance {
  //   return _instance ?? AppApi._();
  // }

  @override
  void onInit() {
    httpClient.baseUrl = Const.APIURL;
    httpClient.timeout = const Duration(seconds: 20);
    httpClient.defaultContentType = "application/json";
    super.onInit();
  }
}
