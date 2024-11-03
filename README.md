---

# Aplikasi Dompet Digital Flutter

Sebuah aplikasi dompet digital sederhana yang dibuat menggunakan Flutter. Aplikasi ini memungkinkan pengguna untuk mengelola dompet, melakukan transfer uang, dan fitur lainnya. Saat ini, aplikasi belum terintegrasi dengan database dan menggunakan data statis.

https://dribbble.com/shots/20743358-FinPay-Money-Wallet-Mobile-App

![Desain App](https://github.com/user-attachments/assets/6bbb7a60-00cb-474c-beef-2d2b3bc9cee6)


[Money Wallet Mobile App](https://github.com/user-attachments/assets/0bd45547-7af0-47d1-bf95-6aae9e61da06)


## Fitur

- **Onboarding**: Layar sambutan untuk memperkenalkan aplikasi kepada pengguna baru.
- **Manajemen Dompet**: Melihat total saldo, menambahkan dompet baru, dan melihat detail dompet.
- **Transfer Uang**: Mengirim uang ke pengguna lain dengan memasukkan jumlah transfer.

## Instalasi

Pastikan Anda telah menginstal [Flutter](https://flutter.dev/docs/get-started/install) di komputer Anda.

1. **Clone repositori ini:**

   ```bash
   git clone https://github.com/mhusainh/MobileProgramming-MoneyWalletMobileApp-Flutter.git
   ```

2. **Masuk ke direktori proyek:**

   ```bash
   cd MobileProgramming-MoneyWalletMobileApp-Flutter/wallet_app
   ```

3. **Instal dependensi:**

   ```bash
   flutter pub get
   ```

4. **Jalankan aplikasi:**

   ```bash
   flutter run
   ```

## Struktur Proyek

```
lib/
  core/
    global_component/
      - Typography.dart 
      - ButtonComponent.dart 
      - BarButtonComponent.dart
      - CardComponent.dart
    config/
      - main_app.dart
    utils/
      - route_utils.dart
    constants/
      - string.dart
      - color.dart
      - images.dart

  data/
    wallet/
      model/
        - Wallet.dart
      dummy/
        - DummyWallet.dart
    profile/
      model/
        - Profile.dart
      dummy/
        - DummyProfile.dart

  features/
    onboarding/
      screen/
        - WelcomeScreen.dart
      widgets/
        - WelcomeIllustrationWidget.dart
        - GetStartedButtonWidget.dart
      controller/
        - WelcomeController.dart

    wallet_management/
      screen/
        - WalletScreen.dart
      widgets/
        - WalletCardWidget.dart
        - TotalBalanceWidget.dart
        - AddWalletButtonWidget.dart
        - BarButtonWidget.dart
      controller/
        - WalletController.dart

    money_transfer/
      screen/
        - SendMoneyScreen.dart
      widgets/
        - AmountInputWidget.dart
        - KeypadWidget.dart
        - SendButton.dart
        - BarButtonWidget.dart
      controller/
        - SendMoneyController.dart
```

## Teknologi yang Digunakan

- **Flutter**: Framework UI open-source dari Google untuk membangun aplikasi secara native di mobile, web, dan desktop dari satu basis kode tunggal.
- **Dart**: Bahasa pemrograman yang digunakan oleh Flutter.

## Catatan

- Aplikasi ini menggunakan data statis dan belum terintegrasi dengan database.
- Struktur folder dirancang untuk memisahkan komponen berdasarkan fitur untuk memudahkan pengembangan dan pemeliharaan.

## Kontribusi

Kontribusi sangat diterima! Jika Anda ingin berkontribusi pada proyek ini:

1. **Fork** repositori ini.
2. Buat **branch** fitur baru:

   ```bash
   git checkout -b fitur/nama-fitur-baru
   ```

3. **Commit** perubahan Anda:

   ```bash
   git commit -m 'Menambahkan fitur X'
   ```

4. **Push** ke branch:

   ```bash
   git push origin fitur/nama-fitur-baru
   ```

5. Buat **Pull Request** di GitHub.

## Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).

---
