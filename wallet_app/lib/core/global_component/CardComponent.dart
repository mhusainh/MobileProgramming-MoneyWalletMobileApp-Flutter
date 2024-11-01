import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/core/constants/color.dart';
import 'package:wallet_app/core/constants/icons.dart';
import 'package:wallet_app/core/global_component/Typography.dart';

class CardComponent extends StatelessWidget {
  final String bankName;
  final String cardNumber;
  final String cardHolderName;
  final Color backgroundColor;

  const CardComponent({
    Key? key,
    required this.bankName,
    required this.cardNumber,
    required this.cardHolderName,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380, // Lebar proporsional yang lebih besar
      height: 200, // Tinggi kartu proporsional yang sesuai
      padding: const EdgeInsets.only(
        left: 16, // Padding kiri
        top: 14, // Padding atas
        right: 16, // Padding kanan
        bottom: 16, // Padding bawah
      ),
      // Padding tetap sesuai proporsi
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            backgroundColor,                         // Warna dasar
            Color.lerp(backgroundColor, AppColors.backgroundColor, 0.3)!, // Warna lebih terang, campuran warna dasar dan putih
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nama Bank dan Ikon NFC
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  bankName,
                  style: AppTypography.h2(AppColors.textColor2),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SvgPicture.asset(
                AppIcons.nfc,
                height: 24,
                color: AppColors.textColor2,
                placeholderBuilder: (context) =>
                   const Icon(Icons.error, color: Colors.red),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Ikon Chip
          SvgPicture.asset(
            AppIcons.cardChip,
            height: 55,
            placeholderBuilder: (context) =>
               const Icon(Icons.error, color: Colors.red),
          ),
          const SizedBox(height: 2),

          // Nomor Kartu
          Text(cardNumber,
              style: const TextStyle(
                fontSize: 23,
                letterSpacing: 1,
                color: AppColors.textColor2,
                fontFamily: 'Stapel',
                fontWeight: FontWeight.w500,
              )),

          // Nama Pemegang Kartu dan Logo Mastercard
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardHolderName,
                style: AppTypography.bodyText(Colors.grey[300]),
              ),
              SvgPicture.asset(
                AppIcons.masterCardLogo,
                height: 28,
                placeholderBuilder: (context) =>
                   const Icon(Icons.error, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
