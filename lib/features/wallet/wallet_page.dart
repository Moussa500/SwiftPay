import 'package:flutter/material.dart';
import 'package:swift_pay/common/common_color.dart';
import 'package:swift_pay/features/wallet/screen/account.dart';
import 'package:swift_pay/features/wallet/screen/card_tab.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor().backgorund1,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/icons/ArrowLeft.png",
                scale: 0.8,
              ),
              const Spacer(),
              const Text(
                "Wallet",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Spacer(),
              Image.asset(
                "assets/images/icons/More_Vertical.png",
                scale: 0.8,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
            backgroundColor: CommonColor().backgorund1,
            snap: true,
            floating: true,
            expandedHeight: 130.0,
            bottom: TabBar(
              tabs: const [
                Tab(text: 'Cards'),
                Tab(
                  text: 'Account',
                )
              ],
              controller: controller,
            ),
          ),
           SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: const [CardTab(), AccountTab()],
            ),
          )
        ],
      ),
    );
  }
}
