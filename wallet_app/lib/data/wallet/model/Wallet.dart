import 'package:flutter/material.dart';

class Wallet {
  final String bankName;
  final String cardNumber;
  final String cardHolderName;
  final double balance;
  final Color backgroundColor;
  final int profileId;

  Wallet({
    required this.bankName,
    required this.cardNumber,
    required this.cardHolderName,
    required this.balance,
    required this.backgroundColor,
    required this.profileId,
  });
}
