import 'package:flutter/material.dart';
import 'package:wallet_app/data/wallet/dummy/DummyWallet.dart';
import 'package:wallet_app/data/wallet/model/Wallet.dart';


class WalletController {
  bool isUserNew() {
    // Logika untuk memeriksa apakah pengguna baru atau sudah terdaftar
    return true; // Contoh, return false jika pengguna sudah pernah login
  }
  double getTotalBalance() {
    double sum = 0.0;
    for (Wallet wallet in DummyWallet.wallets) {
      sum += wallet.balance;
    }
    return sum;
  }
  void navigateToNextScreen(BuildContext context) {
    if (isUserNew()) {
      Navigator.pushNamed(context, '/onboarding');
    } else {
      Navigator.pushNamed(context, '/wallet');
    }
  }
}
