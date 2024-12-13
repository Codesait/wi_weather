import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wi_weather_app/src/res.dart';
// import 'package:flutter/services.dart';

class AppTheme {
  factory AppTheme() {
    return _instance;
  }

  AppTheme._();

  static final _instance = AppTheme._();

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.black,
    dividerColor: AppColors.offWhite,
    cardColor: AppColors.black,
    hintColor: AppColors.offWhite,
    iconTheme: const IconThemeData(color: AppColors.white),
    appBarTheme: const AppBarTheme(color: AppColors.black),

    /// text theme
    textTheme: TextTheme(
      displayLarge: GoogleFonts.dmMono(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.5,
        fontSize: 44.sp,
      ),
      titleLarge: GoogleFonts.dmMono(
        fontSize: 24.sp,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.dmMono(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 15.sp,
      ),
      bodyMedium: GoogleFonts.dmMono(
        fontWeight: FontWeight.normal,
        color: Colors.white,
        fontSize: 12.sp,
      ),
      labelLarge: GoogleFonts.dmMono(
        fontSize: 12.sp,
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.offWhite,
    dividerColor: AppColors.black.withOpacity(.2),
    cardColor: Colors.white,
    hintColor: AppColors.black.withOpacity(.4),
    iconTheme: const IconThemeData(color: AppColors.black),
    appBarTheme: const AppBarTheme(color: Colors.white),

    /// text theme
    textTheme: TextTheme(
      displayLarge: GoogleFonts.dmMono(
        fontWeight: FontWeight.bold,
        color: AppColors.black,
        letterSpacing: 1.5,
        fontSize: 44.sp,
      ),
      titleLarge: GoogleFonts.dmMono(
        fontSize: 24.sp,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.dmMono(
        fontWeight: FontWeight.bold,
        color: AppColors.black,
        fontSize: 15.sp,
      ),
      bodyMedium: GoogleFonts.dmMono(
        fontWeight: FontWeight.normal,
        color: AppColors.black,
        fontSize: 12.sp,
      ),
      labelLarge: GoogleFonts.dmMono(
        color: AppColors.black,
        fontSize: 12.sp,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
    ),
  );
}
