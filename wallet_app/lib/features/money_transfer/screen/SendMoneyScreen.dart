import 'package:flutter/material.dart';
import '../widgets/AmountInputWidget.dart';
import '../widgets/KeypadWidget.dart';
import '../widgets/SendButtonWidget.dart';
import '../widgets/BarButtonWidget.dart';
import 'package:wallet_app/core/global_component/Typography.dart';

class SendMoneyScreen extends StatefulWidget {
  @override
  _SendMoneyScreenState createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  String _amount = '';
  int _selectedIndex = 1; // Indeks default untuk Send

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      // Navigasi ke '/wallet'
      Navigator.pushReplacementNamed(context, '/wallet');
    } else if (index == 1) {
      // Navigasi ke '/send'
      Navigator.pushReplacementNamed(context, '/send');
    } else if (index == 2) {
      // Navigasi ke '/request'
      Navigator.pushReplacementNamed(context, '/request');
    }
  }

  void _updateAmount(String value) {
    setState(() {
      if (value == '⌫') {
        if (_amount.isNotEmpty) {
          _amount = _amount.substring(0, _amount.length - 1);
        }
      } else {
        _amount += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menghapus AppBar
      body: SafeArea(
        child: Column(
          children: [
            // BarButtonWidget di bagian atas
            BarButtonWidget(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
            // Expanded untuk konten utama
            Expanded(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Menengahkan secara vertikal
                children: [
                  // Teks "Enter Amount"
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Enter Amount',
                      style: AppTypography.h3(),
                    ),
                  ),
                  // Konten utama dengan padding horizontal
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        AmountInputWidget(amount: _amount),
                        const SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            text: 'Your Total Balance: ',
                            style: AppTypography.bodyText(const Color(0xFF2f343f)), // Gaya teks utama
                            children: <TextSpan>[
                              const TextSpan(
                                text: '\$2,539 ',
                                style: TextStyle(color: Colors.black)),
                              TextSpan(
                                text: '(available)',
                                style: AppTypography.bodyText(const Color(0xFF2f343f))
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SendButtonWidget di bawah konten utama
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: SendButtonWidget(),
            ),
            // Keypad di bagian paling bawah
            KeypadWidget(onKeyPressed: _updateAmount),
          ],
        ),
      ),
    );
  }
}
