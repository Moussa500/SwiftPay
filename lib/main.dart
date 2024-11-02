import 'package:swift_pay/features/wallet/screen/card_tab.dart';
import 'package:swift_pay/features/wallet/wallet_page.dart';
import 'package:swift_pay/router/router_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return /*MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(brightness: Brightness.dark),
    );*/
        MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const WalletPage(),
    );
  }
}
