import 'package:flutter/material.dart';

class ThemeColors {
  static ThemeColors? _instance;
  static ThemeColors get instance {
    return _instance ?? ThemeColors._();
  }

  ThemeColors._();

  MaterialColor primaryColor = const MaterialColor(
    0xFF52a318,
    {
      50: Color.fromRGBO(82, 163, 24, .1),
      100: Color.fromRGBO(82, 163, 24, .2),
      200: Color.fromRGBO(82, 163, 24, .3),
      300: Color.fromRGBO(82, 163, 24, .4),
      400: Color.fromRGBO(82, 163, 24, .5),
      500: Color.fromRGBO(82, 163, 24, .6),
      600: Color.fromRGBO(82, 163, 24, .7),
      700: Color.fromRGBO(82, 163, 24, .8),
      800: Color.fromRGBO(82, 163, 24, .9),
      900: Color.fromRGBO(82, 163, 24, 1),
    },
  );
  Color swatchColor = const Color(0xFF2a99f5);
  Color headerColor = const Color(0xFF230f34);

  MaterialColor primaryColorDark = const MaterialColor(
    0xFF52a318,
    {
      50: Color.fromRGBO(82, 163, 24, .1),
      100: Color.fromRGBO(82, 163, 24, .2),
      200: Color.fromRGBO(82, 163, 24, .3),
      300: Color.fromRGBO(82, 163, 24, .4),
      400: Color.fromRGBO(82, 163, 24, .5),
      500: Color.fromRGBO(82, 163, 24, .6),
      600: Color.fromRGBO(82, 163, 24, .7),
      700: Color.fromRGBO(82, 163, 24, .8),
      800: Color.fromRGBO(82, 163, 24, .9),
      900: Color.fromRGBO(82, 163, 24, 1),
    },
  );
}
