import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_pay/features/home/screen/home_screen.dart';
import 'package:swift_pay/features/statistics/statistics_screen.dart';
import 'package:swift_pay/features/wallet/wallet_page.dart';
import 'package:swift_pay/router/app_router.dart';
import 'package:swift_pay/screen/account_screen.dart';
import 'package:swift_pay/screen/navigation_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: Routes.homescreen.path,
    routes: [
      ShellRoute(
        parentNavigatorKey: _rootNavigatorKey,
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) {
          int index = 0;

          if (state.fullPath == Routes.homescreen.path) {
            index = 0;
          } else if (state.fullPath == Routes.wallet.path) {
            index = 1;
          } else if (state.fullPath == Routes.account.path) {
            index = 2;
          } else if (state.fullPath == Routes.statisticsscreen.path) {
            index = 3;
          }

          return CupertinoPage(
            child: NavigationScreen(
              selectedIndex: index,
              child: child,
            ),
          );
        },
        routes: [
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Routes.homescreen.path,
            name: Routes.homescreen.name,
            pageBuilder: (context, state) {
              return const CupertinoPage(child: HomeScreen());
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Routes.wallet.path,
            name: Routes.wallet.name,
            pageBuilder: (context, state) {
              return const CupertinoPage(child: WalletPage());
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Routes.account.path,
            name: Routes.account.name,
            pageBuilder: (context, state) {
              return  CupertinoPage(child: AccountScreen());
            },
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Routes.statisticsscreen.path,
            name: Routes.statisticsscreen.name,
            pageBuilder: (context, state) {
              return const CupertinoPage(child: StatisticsScreen());
            },
          ),
        ],
      ),
    ]);

// final router = GoRouter( routes: [
//   GoRoute(
//     path: Routes.navigation.path,
//     name: Routes.navigation.name,
//     pageBuilder: (context, state) {
//       return const CupertinoPage(child: Navigation());
//     },
//   ),
//   GoRoute(
//     path: Routes.homescreen.path,
//     name: Routes.homescreen.name,
//     pageBuilder: (context, state) {
//       return const CupertinoPage(child: HomeScreen());
//     },
//   ),
//   GoRoute(
//     path: Routes.wallet.path,
//     name: Routes.wallet.name,
//     pageBuilder: (context, state) {
//       return const CupertinoPage(child: WalletScreen());
//     },
//   ),
//   GoRoute(
//     path: Routes.account.path,
//     name: Routes.account.name,
//     pageBuilder: (context, state) {
//       return const CupertinoPage(child: AccountScreen());
//     },
//   ),
//   GoRoute(
//     path: Routes.statisticsscreen.path,
//     name: Routes.statisticsscreen.name,
//     pageBuilder: (context, state) {
//       return const CupertinoPage(child: StatisticsScreen());
//     },
//   ),
// ]);