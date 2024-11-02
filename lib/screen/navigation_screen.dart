import 'package:swift_pay/common/common_color.dart';
import 'package:swift_pay/router/app_router.dart';
import 'package:swift_pay/router/router_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationScreen extends StatelessWidget {
  final Widget child;
  final int selectedIndex;

  const NavigationScreen(
      {Key? key, required this.child, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: selectedIndex == 0,
        onPopInvokedWithResult: (didPop, result) {
          if (selectedIndex != 0) {
            context.go(Routes.homescreen.path);
          }
        },
        child: Stack(
          children: [
            child,
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.6),
                  border: Border.all(color: CommonColor().bluebg),
                ),
                child: SizedBox(
                  height: 50,
                  child: CustomNavbar(
                    colors: Colors.pink,
                    selectedColor: CommonColor().backgorund1,
                    icons: [
                      "assets/images/icons/House",
                      "assets/images/icons/credit card.png",
                      "assets/images/icons/account.png",
                      "assets/images/icons/bar graph.png",
                    ],
                    currentIndex: selectedIndex,
                    onItemTap: (index) => context.go(_indexToTab(index)),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  String _indexToTab(int index) {
    switch (index) {
      case 0:
        return Routes.homescreen.path;
      case 1:
        return Routes.wallet.path;
      case 2:
        return Routes.account.path;
      case 3:
        return Routes.statisticsscreen.path;
      default:
        return Routes.homescreen.path;
    }
  }
}

class CustomNavbar extends StatefulWidget {
  const CustomNavbar(
      {super.key,
      required this.icons,
      required this.currentIndex,
      required this.onItemTap,
      required this.selectedColor,
      required this.colors});
  final List<String> icons;
  final int currentIndex;
  final void Function(int index) onItemTap;
  final Color selectedColor;
  final Color colors;

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      double lineSize = constraints.maxWidth / widget.icons.length;
      return Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              margin: EdgeInsets.only(left: widget.currentIndex * lineSize),
              height: 80,
              width: lineSize,
              decoration: BoxDecoration(
                  color: CommonColor().bluebg,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: CommonColor().bluebg,
                      blurRadius: 10,
                    )
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widget.icons.map((e) {
                int index = widget.icons.indexOf(e);
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: (lineSize - 48) / 2),
                  child: SizedBox(
                    width: 48,
                    child: MaterialButton(
                      onPressed: widget.currentIndex == index
                          ? null
                          : () {
                              widget.onItemTap(index);
                            },
                      elevation: 0,
                      minWidth: 10,
                      height: 45,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      splashColor: const Color(0xFFBE8E9B),
                      highlightColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: Image.asset(e),
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      );
    });
  }
}
