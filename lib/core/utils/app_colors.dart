import 'package:flutter/material.dart';

interface class AppColor {
  final Color background;
  final Color primaryText;
  final Color secondaryText;
  final Color buttonBackground;
  final Color buttonForground;
  final Color bottomNavigationBarBackground;
  AppColor({
    required this.background,
    required this.primaryText,
    required this.secondaryText,
    required this.buttonBackground,
    required this.buttonForground,
    required this.bottomNavigationBarBackground,
  });
}

class MyAppDarkColor extends AppColor {
  MyAppDarkColor()
      : super(
          background: const Color(0xFF121212),
          primaryText: const Color.fromARGB(255, 255, 255, 255),
          secondaryText: const Color.fromARGB(222, 160, 160, 160),
          buttonBackground: const Color.fromRGBO(255, 255, 255, 1),
          buttonForground: const Color.fromRGBO(0, 0, 0, 1),
          bottomNavigationBarBackground: const Color.fromRGBO(35, 35, 35, 35),
        );
}