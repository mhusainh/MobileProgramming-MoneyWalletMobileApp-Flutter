import '../model/Wallet.dart';
import 'package:flutter/material.dart';

class DummyWallet {
  static List<Wallet> wallets = [
    Wallet(
      bankName: 'IndoPremiere Bank',
      cardNumber: '9000 1234 5678',
      cardHolderName: 'Michael Lee',
      balance: 2500.0, // Ensure this is a double
      backgroundColor: Colors.orange.shade400,
      profileId: 1,
    ),
    Wallet(
      bankName: 'Digitel Bank',
      cardNumber: '5678 1234 0000',
      cardHolderName: 'Alice Johnson',
      balance: 3700.0, // Ensure this is a double
      backgroundColor: const Color.fromARGB(255, 42, 113, 226),
      profileId: 1,
    ),
    Wallet(
      bankName: 'International Bank',
      cardNumber: '1234 5678 9000',
      cardHolderName: 'James Cooper',
      balance: 4200.0, // Ensure this is a double
      backgroundColor: const Color(0xFFF2BA1F),
      profileId: 1,
    ),
  ];
}
