import 'package:flutter/material.dart';
import 'package:wallet_app/core/constants/color.dart';
import 'package:wallet_app/core/global_component/ButtonComponent.dart';

class SendButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonComponent(
      onPressed: () {
        Navigator.pushNamed(context, '/wallet'); // Navigasi ke layar Wallet
      },
      backgroundColor: AppColors.button, // Warna latar belakang khusus
      textColor: AppColors.textColor2, // Warna teks khusus
      buttonText: 'Send', // Teks khusus
    );
  }
}
