import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_socode/core/theme/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.secondary,
    primaryColor: AppColors.primary,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: AppColors.secondary,
      cursorColor: AppColors.secondary,
      selectionHandleColor: AppColors.secondary,
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primary,
      onPrimary: AppColors.secondary,
      inversePrimary: AppColors.black,
      secondary: AppColors.secondary,
      onSecondary: AppColors.black,
      surface: AppColors.midGray,
      error: AppColors.redError,
      onSurface: AppColors.black,
      onError: AppColors.secondary,
      brightness: Brightness.light,
    ),

    fontFamily: "Montserrat",

    ///[Drawer theme]
    drawerTheme: DrawerThemeData(scrimColor: Colors.black.withOpacity(0.05)),

    /// [AppBar Theme]
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      elevation: 2.0,
      shadowColor: AppColors.lightGray,
      iconTheme: IconThemeData(color: AppColors.secondary, size: 32),
    ),

    /// [Text Theme]
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 10.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w300,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 14.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w300,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 16.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontSize: 30.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 18.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontSize: 16.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 12.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w300,
      ),
      labelMedium: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 10.sp,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.deepGray, size: 24),

    /// [Bottom Navigation Bar]
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.deepGray,
      backgroundColor: AppColors.secondary,
      selectedIconTheme: IconThemeData(color: AppColors.primary),
      unselectedIconTheme: IconThemeData(color: AppColors.deepGray),
    ),
  );

  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: AppColors.secondary,
      cursorColor: AppColors.secondary,
      selectionHandleColor: AppColors.secondary,
    ),
    scaffoldBackgroundColor: AppColors.black,
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.primary,
      onPrimary: AppColors.black,
      inversePrimary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.secondary,
      error: AppColors.redError,
      onSecondary: AppColors.secondary,
      onSurface: AppColors.secondary,
      onError: AppColors.secondary,
      brightness: Brightness.dark,
    ),

    fontFamily: "Montessart",

    ///[Drawer theme]
    drawerTheme: DrawerThemeData(scrimColor: Colors.black.withOpacity(0.05)),

    /// [AppBar Theme]
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.black,
      elevation: 2.0,
      shadowColor: AppColors.deepGray,
      iconTheme: IconThemeData(color: AppColors.secondary, size: 32),
    ),

    // / [Text Theme]
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontFamily: "Michroma",
        fontSize: 10.sp,
        color: AppColors.secondary,
        fontWeight: FontWeight.w300,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Michroma",
        fontSize: 14.sp,
        color: AppColors.secondary,
        fontWeight: FontWeight.w300,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Michroma",
        fontSize: 16.sp,
        color: AppColors.secondary,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontSize: 30.sp,
        color: AppColors.secondary,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 18.sp,
        color: AppColors.secondary,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontSize: 16.sp,
        color: AppColors.secondary,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 12.sp,
        color: AppColors.secondary,
        fontWeight: FontWeight.w300,
      ),
      labelMedium: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 10.sp,
        color: AppColors.secondary,
        fontWeight: FontWeight.w500,
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.midGray, size: 24),

    /// [Bottom Navigation Bar]
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.secondary,
      unselectedItemColor: AppColors.secondary,
      backgroundColor: AppColors.black,
      selectedIconTheme: IconThemeData(color: AppColors.secondary),
      unselectedIconTheme: IconThemeData(color: AppColors.secondary),
    ),
  );
}