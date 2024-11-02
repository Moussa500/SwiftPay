import 'package:swift_pay/common/common_color.dart';
import 'package:swift_pay/common/common_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAccountCard extends StatefulWidget {
  const CustomAccountCard({
    super.key,
    required this.image,
    required this.name,
    required this.value,
    Key? keyy,
  });
  final String image;
  final String name;
  final bool value;
  @override
  State<CustomAccountCard> createState() => _CustomAccountCardState();
}

class _CustomAccountCardState extends State<CustomAccountCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 400,
      decoration: BoxDecoration(
          color: CommonColor().backgorund1,
          border: Border.all(color: const Color(0Xff19173d)),
          borderRadius: BorderRadius.circular(60)),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Spacer(),
              Text(
                widget.name,
                style: CommonTextStyle().style1,
              ),
              const SizedBox(
                height: 2,
              ),
              const Spacer(),
            ],
          ),
          const Spacer(),
          Container(
            height: 44,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: CommonColor().backgorund1),
            child: Center(
              child: CupertinoSwitch(
                  value: widget.value,
                  onChanged: (value) {
                    setState(() {
                      value = false;
                    });
                  }),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
