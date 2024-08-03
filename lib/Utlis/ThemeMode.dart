import 'package:first_git_app/Utlis/app_colors.dart';
import 'package:flutter/material.dart';

class MyThemeData {
  static final ThemeData themeMode = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: AppColors.primaryColor,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.blackColor),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true),
      textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri',
              color: AppColors.blackColor),
          bodyMedium: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'ElMessiri',
            fontSize: 28,
          ),
          titleMedium: TextStyle(
            color: AppColors.blackColor,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.whiteColor,
        showUnselectedLabels: true,
        selectedLabelStyle:
            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        unselectedIconTheme: IconThemeData(size: 25),
      ));
}
