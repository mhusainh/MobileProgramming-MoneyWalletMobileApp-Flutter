import 'package:flutter/material.dart';
import 'package:wallet_app/constants/color.dart';
import 'package:wallet_app/global_component/BarButtonComponent.dart';
import 'package:wallet_app/features/wallet_management/widgets/WalletCardWidget.dart';
import 'package:wallet_app/features/wallet_management/widgets/TotalBalanceWidget.dart';
import 'package:wallet_app/features/wallet_management/widgets/AddWalletButtonWidget.dart';
import 'package:wallet_app/global_component/Typography.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int _selectedIndex = 0; // Default to Wallet

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      // Navigate to '/wallet' route
      Navigator.pushReplacementNamed(context, '/wallet');
    } else if (index == 1) {
      // Navigate to '/send' route
      Navigator.pushReplacementNamed(context, '/send');
    } else if (index == 2) {
      // Navigate to '/request' route (ensure this route exists)
      Navigator.pushReplacementNamed(context, '/request');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back button
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
              radius: 20,
            ),
            const SizedBox(width: 10),
            Text('Hello, Steven!', style: AppTypography.name()),
          ],
        ),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Simply include the TotalBalanceWidget
            TotalBalanceWidget(),
            const SizedBox(height: 10),
            Center(
              child: BarButtonComponent(
                selectedIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Your Wallet',
              style: AppTypography.name(),
            ),
            const SizedBox(height: 10),
            WalletCardWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AddWalletButtonWidget(),
      ),
    );
  }
}
