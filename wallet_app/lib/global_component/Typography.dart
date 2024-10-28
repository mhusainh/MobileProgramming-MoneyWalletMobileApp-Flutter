import 'package:flutter/material.dart';
import 'package:wallet_app/constants/color.dart';

class AppTypography {
  static TextStyle h1() {
    return const TextStyle(
      fontFamily: 'Stapel',
      fontSize: 45,
      fontWeight: FontWeight.w500,
      color: AppColors.textColor2,
      height: 1.2,
    );
  }

  static TextStyle h2(color) {
    return TextStyle(
      fontSize: 19,
      color: color,
      fontFamily: 'Stapel',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle h3() {
    return const TextStyle(
      fontSize: 20,
      color: Color(0xFF2f343f),
      fontFamily: 'Stapel',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bodyText(color) {
    return TextStyle(
      fontSize: 16,
      color: color,
      fontFamily: 'Stapel',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle button(color) {
    return TextStyle(
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle name() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'Stapel',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle currency() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 42,
      fontWeight: FontWeight.bold,
    );
  }
}
