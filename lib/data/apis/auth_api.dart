import 'package:get/get.dart';
import '../../core/core.dart';

class AuthApi extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = Const.APIURL;
    httpClient.addRequestModifier<Object?>((request) {
      String token = "";
      request.headers['Accept'] = 'application/json';
      request.headers['Authorization'] = 'Bearer $token';
      return request;
    });
    super.onInit();
  }

  dynamic errorHandler(Response response) {
    appPrint(response.statusText.toString());
    switch (response.statusCode) {
      case 200:
      case 201:
      case 202:
        var responseJson = response.body;
        return responseJson;
      case 500:
        throw "Server Error pls retry later";
      case 403:
        throw 'Error occurred pls check internet and retry.';
      default:
        throw 'Error occurred retry';
    }
  }
}
