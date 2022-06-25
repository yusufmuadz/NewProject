// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider2 extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    fontFamily: "Poppins",
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.grey.shade900,
    primaryColorDark: Colors.grey.shade600,
    splashColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(
      primary: Colors.grey.shade900,
      secondary: Colors.white,
      primaryVariant: Colors.grey.shade900,
      secondaryVariant: Colors.grey.shade600,
    ),
    iconTheme: IconThemeData(color: Colors.grey.shade200, opacity: 0.8),
    appBarTheme: AppBarTheme(titleTextStyle: TextStyle(color: Colors.white), backgroundColor: Colors.grey.shade900),
    brightness: Brightness.dark,
    dialogTheme: DialogTheme(backgroundColor: Colors.grey.shade900),
    dialogBackgroundColor: Colors.grey.shade900,
    backgroundColor: Colors.grey.shade900,
    cardTheme: CardTheme(color: Colors.grey.shade900),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.grey.shade900),
    dividerColor: Colors.black
  );

  static final lightTheme = ThemeData(
    fontFamily: "Poppins",
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    primaryColorDark: Colors.grey.shade100,
    splashColor: Colors.purple.shade200.withOpacity(0.1),
    colorScheme: ColorScheme.light(
      primary: Color(0xFF005E51),
      secondary: Color(0xFF005E51),
      primaryVariant: Color(0x33E1E1E1),
      secondaryVariant: Color(0x33E1E1E1)
    ),
    iconTheme: IconThemeData(color: Colors.red, opacity: 0.8),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.black),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.grey.shade900
      ),
    ),
    brightness: Brightness.light,
    dialogTheme: DialogTheme(backgroundColor: Colors.white),
    dialogBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    cardTheme: CardTheme(color: Colors.white),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
    dividerColor: Colors.white,
    // primarySwatch: Colors.green
  );
}