import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    buttonTheme: const ButtonThemeData(),
    textTheme: GoogleFonts.poppinsTextTheme(Get.textTheme).copyWith(
      bodySmall: GoogleFonts.poppins(
        color: ColorManager.grayColor,
        fontSize: 12,
        height: 1.2,
      ),
      displaySmall: GoogleFonts.poppins(),
      headlineSmall: GoogleFonts.poppins(
        color: ColorManager.blackColor,
        fontWeight: FontWeight.bold,
      ),
      labelSmall: GoogleFonts.poppins(),
      titleSmall: GoogleFonts.poppins(),
      bodyMedium: GoogleFonts.poppins(
        color: ColorManager.grayColor,
        fontSize: 14,
        height: 1.2,
      ),
      displayMedium: GoogleFonts.poppins(),
      headlineMedium: GoogleFonts.poppins(),
      labelMedium: GoogleFonts.poppins(),
      titleMedium: GoogleFonts.poppins(),
      labelLarge: GoogleFonts.poppins(),
      bodyLarge: GoogleFonts.poppins(
        color: ColorManager.grayColor,
        fontSize: 16,
        height: 1.2,
      ),
      displayLarge: GoogleFonts.poppins(),
      headlineLarge: GoogleFonts.poppins(),
      titleLarge: GoogleFonts.poppins(),
    ),
    primaryColor: ColorManager.accentColor1,
    splashColor: ColorManager.accentColor1,
    scaffoldBackgroundColor: ColorManager.whiteColor,
    splashFactory: InkSplash.splashFactory,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          GoogleFonts.poppins(color: ColorManager.blackColor, fontSize: 18,),
        ),
        splashFactory: InkSplash.splashFactory,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: const MaterialColor(ColorManager.primaryIntColor, ColorManager.primaryMap),
      accentColor: ColorManager.accentColor1,
    ).copyWith(
      primary: const MaterialColor(ColorManager.primaryIntColor, ColorManager.primaryMap),
      secondary: ColorManager.accentColor1,
    ),
  );
}

