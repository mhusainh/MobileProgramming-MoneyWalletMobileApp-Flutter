import 'package:flutter/material.dart';
import 'package:wallet_app/core/constants/color.dart';

class BarButtonComponent extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  BarButtonComponent({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF4F7FE),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Color.fromARGB(255, 219, 222, 230), width: 1.5),
      ),
      padding: EdgeInsets.all(6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildButton("Wallet", 0),
          SizedBox(width: 11.25),
          _buildButton("Send", 1),
          SizedBox(width: 11.25),
          _buildButton("Request", 2),
        ],
      ),
    );
  }

  Widget _buildButton(String label, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onTap(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.button : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: AppColors.button.withOpacity(0.5),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ]
              : [],
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? AppColors.textColor2 : Color(0xFF5e5f62),
            fontWeight: FontWeight.normal,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
