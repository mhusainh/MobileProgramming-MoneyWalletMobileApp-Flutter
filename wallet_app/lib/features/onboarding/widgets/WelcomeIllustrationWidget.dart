import 'package:flutter/material.dart';
import 'package:wallet_app/core/constants/images.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.background, // Pastikan path gambar sesuai
      fit: BoxFit.cover, // Menutup seluruh layar
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}
