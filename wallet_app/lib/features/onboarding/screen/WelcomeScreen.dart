import 'package:flutter/material.dart';
import 'package:wallet_app/core/constants/string.dart';
import 'package:wallet_app/core/global_component/Typography.dart';
import '../widgets/GetStartedButtonWidget.dart';
import '../widgets/WelcomeIllustrationWidget.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Latar belakang menggunakan WelcomeIllustrationWidget
          Positioned.fill(
            child: WelcomeIllustrationWidget(),
          ),
          // Konten utama di atas latar belakang
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.welcomeMessage,
                    style: AppTypography.h1(),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    AppStrings.welcomeInformation,
                    style: AppTypography.bodyText( Colors.grey[300]),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child:
                        GetStartedButtonWidget(), // Menggunakan widget tombol
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
