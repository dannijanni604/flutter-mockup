import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme_colors.dart';

class AppTheme {
  static AppTheme? _instance;
  AppTheme._();
  static AppTheme get instance {
    return _instance ??= AppTheme._();
  }

  ThemeData lightTheme = ThemeData(
    primaryColor: ThemeColors.instance.primaryColor,
  );
  ThemeData darkTheme = ThemeData();

  void changeToDark() {
    Get.changeTheme(darkTheme);
  }

  void changeToLigh() {
    Get.changeTheme(lightTheme);
  }
}
