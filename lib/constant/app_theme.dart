import 'package:ardilla/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ArdillaTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.sourceSansPro(
      fontSize: 15.0.h,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.sourceSansPro(
      fontSize: 12.0.h,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    displayLarge: GoogleFonts.sourceSansPro(
      fontSize: 35.0.h,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.sourceSansPro(
      fontSize: 18.0.h,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.sourceSansPro(
      fontSize: 18.0.h,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      primarySwatch: const MaterialColor(
        0xFF022964,
        {
          50: Color.fromRGBO(2, 30, 100, .1),
          100: Color.fromRGBO(2, 30, 100, .2),
          200: Color.fromRGBO(2, 30, 100, .3),
          300: Color.fromRGBO(2, 30, 100, .4),
          400: Color.fromRGBO(2, 30, 100, .5),
          500: Color.fromRGBO(2, 30, 100, .6),
          600: Color.fromRGBO(2, 30, 100, .7),
          700: Color.fromRGBO(2, 30, 100, .8),
          800: Color.fromRGBO(2, 30, 100, .9),
          900: Color.fromRGBO(2, 30, 100, 1),
        },
      ),
      brightness: Brightness.light,
      // useMaterial3: true,
      fontFamily: 'CabinetGrotesk',
      scaffoldBackgroundColor: const Color(0xFFF9F9F9),
      textTheme: lightTextTheme,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: ArdillaColor.gray400,
          fontFamily: 'CabinetGrotesk',
          fontSize: 12.h,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: ArdillaColor.gray400,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
