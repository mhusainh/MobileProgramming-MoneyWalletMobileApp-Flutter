import 'package:flutter/material.dart';
import '../../features/onboarding/screen/WelcomeScreen.dart';
import '../../features/wallet_management/screen/WalletScreen.dart';
import '../../features/money_transfer/screen/SendMoneyScreen.dart';

class RouteUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/welcome':
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case '/wallet':
        return MaterialPageRoute(builder: (_) => WalletScreen());
      case '/send':
        return MaterialPageRoute(builder: (_) => SendMoneyScreen());
      default:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
    }
  }
}
