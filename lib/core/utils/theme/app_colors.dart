import 'package:flutter/material.dart';

/// Interface for defining colors used in the application's UI.
class AppColor {
  final Color background; // Background color.
  final Color softBackground; // Soft background color.
  final Color secondaryBackground; // Secondary background color.
  final Color lightBackground; // Light background color.
  final Color pure; // Pure color.
  final Color primaryText; // Primary text color.
  final Color primaryTextSoft; // Soft primary text color.
  final Color primaryTextBlur; // Blurred primary text color.
  final Color secondaryText; // Secondary text color.
  final Color buttonBackground; // Button background color.
  final Color buttonForground; // Button foreground color.
  final Color bottomBar; // Bottom bar background color.
  final Color iconColor; // Icon color.
  final Color gradientPrimary; // Primary gradient color.
  final Color gradientSecondary; // Secondary gradient color.
  final Color boxShadow; // Box shadow color.
  final Color primaryBorder; // Primary border color.
  final Color primarySoftBorder; // Soft primary border color.
  final Color secondaryBorder; // Secondary border color.
  final Color progressIndicatorColor; // Progress indicator color.
  final Color glassEffect; // Glass effect color.
  final Color danger; // Red color.
  final Color success; // Green color.
  final Color fillColor; // Textfield fill color.
  final Color userChatColor; // User chat color.
  final Color recipientChatColor; // Recipient chat color.
  final Color bottomSheet; // Bottom sheet background color.

  /// Constructs an [AppColor] instance with specified colors.
  AppColor({
    required this.background,
    required this.softBackground,
    required this.secondaryBackground,
    required this.lightBackground,
    required this.pure,
    required this.primaryText,
    required this.primaryTextSoft,
    required this.primaryTextBlur,
    required this.secondaryText,
    required this.buttonBackground,
    required this.buttonForground,
    required this.bottomBar,
    required this.iconColor,
    required this.gradientPrimary,
    required this.gradientSecondary,
    required this.boxShadow,
    required this.primaryBorder,
    required this.primarySoftBorder,
    required this.secondaryBorder,
    required this.progressIndicatorColor,
    required this.glassEffect,
    required this.danger,
    required this.fillColor,
    required this.userChatColor,
    required this.recipientChatColor,
    required this.success,
    required this.bottomSheet,
  });
}

/// Class representing the dark color scheme for the application.
class AppDarkColor extends AppColor {
  static AppDarkColor? _instance;

  /// Retrieves the singleton instance of [AppDarkColor].
  static AppDarkColor get instance {
    _instance ??= AppDarkColor._();
    return _instance!;
  }

  /// Constructs a singleton instance of [AppDarkColor] with specified dark colors.
  AppDarkColor._()
      : super(
          background: const Color.fromRGBO(18, 18, 18, 1),
          softBackground: const Color.fromARGB(255, 25, 25, 25),
          secondaryBackground: const Color(0xFF1A1B1A),
         lightBackground: const Color.fromARGB(255, 40, 40, 40),
          pure: const Color.fromRGBO(0, 0, 0, 1),
          primaryText: const Color.fromARGB(255, 255, 255, 255),
          primaryTextSoft:
              const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.9),
          primaryTextBlur: const Color.fromARGB(202, 255, 255, 255),
          secondaryText: const Color.fromARGB(222, 160, 160, 160),
          buttonBackground: const Color.fromRGBO(255, 255, 255, 1),
          buttonForground: const Color.fromRGBO(0, 0, 0, 1),
          bottomBar: const Color(0xFF202020),
          iconColor: const Color.fromARGB(255, 255, 255, 255),
          gradientPrimary: const Color.fromRGBO(78, 78, 78, 1),
          gradientSecondary: const Color.fromRGBO(0, 0, 0, 1),
          boxShadow: const Color.fromARGB(66, 255, 255, 255),
          progressIndicatorColor: const Color.fromRGBO(255, 255, 255, 1),
          glassEffect: const Color.fromARGB(95, 0, 0, 0),
          danger: const Color.fromRGBO(244, 67, 54, 1),
          primaryBorder: const Color.fromRGBO(255, 255, 255, 1),
          primarySoftBorder: const Color.fromARGB(116, 255, 255, 255),
          secondaryBorder: const Color.fromARGB(66, 255, 255, 255),
          fillColor: const Color.fromARGB(237, 53, 53, 53).withOpacity(0.5),
          userChatColor: const Color.fromRGBO(129, 199, 132, 1),
          recipientChatColor: const Color.fromARGB(255, 30, 110, 186),
          success: const Color.fromRGBO(76, 175, 80, 1),
          bottomSheet: const Color.fromARGB(255, 28, 28, 28),
        );
}