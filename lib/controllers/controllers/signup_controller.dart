import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/data/apis/base_api.dart';
import 'package:tourism/routes/routes.dart';

class SignupController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  Future onLogin() async {
    if (formKey.currentState!.validate()) {
      var api = Get.find<AppApi>();
      var res = await api.post("/login", {
        'email': emailController.text.trim(),
        'password': passwordController.text.trim(),
        'name': nameController.text.trim(),
      });
      if (res.isOk) {
        await GetStorage().write('auth_token', res.body['token']);
        Get.offAllNamed(Routes.home);
      } else {
        appPrint(res.statusText!, 'e');
      }
    }
  }
}
