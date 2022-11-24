import 'package:flutter/material.dart';

class ColorManager {
  static const Color grayColor = Color.fromRGBO(68, 68, 68, 1.0);
  static const Color blackColor = Color.fromRGBO(15, 15, 15, 1);
  static const Color lightGrayColor = Color.fromRGBO(207, 207, 207, 1.0);
  static const Color whiteColor = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color accentColor1 = Color.fromRGBO(96, 125, 140, 1.0);
  static const int primaryIntColor = 0xFF607D8C;
  static const Map<int, Color> primaryMap = {
    50: Color.fromRGBO(96,125,140, .05),
    100: Color.fromRGBO(96,125,140, .10),
    200: Color.fromRGBO(96,125,140, .20),
    300: Color.fromRGBO(96,125,140, .30),
    400: Color.fromRGBO(96,125,140, .40),
    500: Color.fromRGBO(96,125,140, .50),
    600: Color.fromRGBO(96,125,140, .60),
    700: Color.fromRGBO(96,125,140, .70),
    800: Color.fromRGBO(96,125,140, .80),
    900: Color.fromRGBO(96,125,140, .90),
    1000: Color.fromRGBO(96,125,140, 1.0),
  };

}
