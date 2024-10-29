import 'package:flutter/material.dart';
import 'package:wallet_app/core/global_component/CardComponent.dart';
import 'package:wallet_app/data/wallet/dummy/DummyWallet.dart';

class WalletCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity, // Lebar disesuaikan dengan CardComponent
        height: 260, // Sesuaikan tinggi agar semua kartu muat
        child: Stack(
          clipBehavior: Clip.none,
          children: List.generate(DummyWallet.wallets.length, (index) {
            final wallet = DummyWallet.wallets[index];
            return Positioned(
              top: index * 70.0, // Sesuaikan jarak antar-kartu
              child: CardComponent(
                bankName: wallet.bankName,
                cardNumber: wallet.cardNumber,
                cardHolderName: wallet.cardHolderName,
                backgroundColor: wallet.backgroundColor,
              ),
            );
          }),
        ),
      ),
    );
  }
}
