import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tourism/routes/routes.dart';

class SplashController extends GetxController {
  GetStorage _storage = GetStorage();

  @override
  void onInit() {
    authenticate();
    super.onInit();
  }

  void authenticate() {
    bool hasToken = _storage.hasData('auth_token');
    Future.delayed(const Duration(seconds: 1), () {
      if (hasToken) {
        Get.offNamed(Routes.home);
      } else {
        Get.offNamed(Routes.login);
      }
    });
  }
}
