import 'package:flutter/material.dart';
import 'package:wallet_app/core/global_component/CardComponent.dart';
import 'package:wallet_app/data/wallet/dummy/DummyWallet.dart';

class WalletCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double adjustedWidth = screenWidth - 32; // Lebar disesuaikan dengan padding horizontal

    return Center(
      child: SizedBox(
        width: adjustedWidth, // Lebar disesuaikan agar tidak mencapai tepi layar
        height: 260 + (DummyWallet.wallets.length - 1) * 70.0, // Sesuaikan tinggi agar semua kartu muat
        child: Stack(
          clipBehavior: Clip.none,
          children: List.generate(DummyWallet.wallets.length, (index) {
            final wallet = DummyWallet.wallets[index];
            return Positioned(
              top: index * 70.0, // Sesuaikan jarak antar-kartu
              left: (adjustedWidth - screenWidth + 32) / 2, // Memastikan kartu berada di tengah adjustedWidth
              child: SizedBox(
                width: screenWidth - 32, // Lebar masing-masing kartu sesuai adjustedWidth
                child: CardComponent(
                  bankName: wallet.bankName,
                  cardNumber: wallet.cardNumber,
                  cardHolderName: wallet.cardHolderName,
                  backgroundColor: wallet.backgroundColor,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
