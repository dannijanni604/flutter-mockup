import 'package:get/get.dart';
import 'package:tourism/data/data.dart';
import '../controllers.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<AuthApi>(
      () => AuthApi(),
    );
  }
}
