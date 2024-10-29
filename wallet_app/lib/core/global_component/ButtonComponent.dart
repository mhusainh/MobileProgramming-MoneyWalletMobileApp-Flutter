import 'package:flutter/material.dart';
import 'Typography.dart';

class ButtonComponent extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String buttonText;
  final VoidCallback onPressed;

  const ButtonComponent({
    Key? key,
    required this.onPressed,
    required this.backgroundColor, // Warna default
    required this.textColor, // Warna teks default
    required this.buttonText, // Teks default
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              buttonText,
              style: AppTypography.button(textColor),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
