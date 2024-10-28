import 'package:flutter/material.dart';
import 'package:wallet_app/global_component/Typography.dart';

class AmountInputWidget extends StatelessWidget {
  final String amount;

  AmountInputWidget({required this.amount});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$ $amount',
      style: AppTypography.currency(),
    );
  }
}
