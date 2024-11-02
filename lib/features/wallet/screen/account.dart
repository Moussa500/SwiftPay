import 'package:swift_pay/common/common_color.dart';
import 'package:swift_pay/features/wallet/screen/custom_account_card.dart';
import 'package:flutter/material.dart';

class AccountTab extends StatefulWidget {
  const AccountTab({super.key});

  @override
  State<AccountTab> createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor().backgorund1,
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CustomAccountCard(
                image: "assets/images/girl_profile.jpeg",
                name: "Aditi Sharma",
                value: true),
            CustomAccountCard(
                image: "assets/images/Ellipse 249.png",
                name: "Sandy Chungus",
                value: false),
            CustomAccountCard(
                image: "assets/images/actress1.jpeg",
                name: "Gautam Yadav",
                value: false),
            CustomAccountCard(
                image:
                    "assets/images/WhatsApp Image 2023-10-16 at 9.47.48 PM.jpeg",
                name: "Aditya Chauhan",
                value: false),
          ],
        ),
      ),
    );
  }
}
