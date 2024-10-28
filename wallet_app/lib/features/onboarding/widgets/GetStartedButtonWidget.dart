import 'package:flutter/material.dart';
import 'package:wallet_app/constants/color.dart';
import 'package:wallet_app/global_component/ButtonComponent.dart';

class GetStartedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonComponent(
      onPressed: () {
        Navigator.pushNamed(context, '/wallet'); // Navigasi ke layar Wallet
      },
      backgroundColor: AppColors.backgroundColor, // Warna latar belakang khusus
      textColor: AppColors.textColor1, // Warna teks khusus
      buttonText: 'Get Started', // Teks khusus
    );
  }
}
