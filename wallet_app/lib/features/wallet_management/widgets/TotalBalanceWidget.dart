import 'package:flutter/material.dart';
import 'package:wallet_app/core/global_component/Typography.dart';

class TotalBalanceWidget extends StatelessWidget {

  TotalBalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dynamically fetch the balance from WalletController
    double balance = 2539;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Total Balance', style: AppTypography.h3()),
        Text(
          '\$ ${balance.toStringAsFixed(2)}',
          style: AppTypography.currency(),
        ),
      ],
    );
  }
}
