import 'package:flutter/material.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/background.png', // Pastikan path gambar sesuai
      fit: BoxFit.cover, // Menutup seluruh layar
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}
