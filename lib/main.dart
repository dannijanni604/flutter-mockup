import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tourism/data/apis/base_api.dart';
import 'package:tourism/routes/routes.dart';
import 'core/core.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tourism',
      theme: AppTheme.instance.lightTheme,
      darkTheme: AppTheme.instance.darkTheme,
      initialRoute: Routes.splash,
      getPages: AppPages.routes,
      initialBinding: BindingsBuilder.put(() => AppApi()),
    );
  }
}
