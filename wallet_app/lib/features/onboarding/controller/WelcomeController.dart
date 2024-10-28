import 'package:flutter/material.dart';

class WelcomeController {
  bool isUserNew() {
    // Logika untuk memeriksa apakah pengguna baru atau sudah terdaftar
    return true; // Contoh, return false jika pengguna sudah pernah login
  }

  void navigateToNextScreen(BuildContext context) {
    if (isUserNew()) {
      Navigator.pushNamed(context, '/onboarding');
    } else {
      Navigator.pushNamed(context, '/wallet');
    }
  }
}
