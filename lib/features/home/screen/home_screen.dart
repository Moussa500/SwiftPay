import 'package:swift_pay/common/common_color.dart';
import 'package:swift_pay/common/common_textstyle.dart';
import 'package:swift_pay/features/home/model/transaction_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  List<TransactionModel> list = [
    TransactionModel(
        image: "assets/images/Amazon.png",
        name: "Amazon",
        date: "May 24,2022",
        ammount: "-\$103.56"),
    TransactionModel(
        image: "assets/images/Logo.png",
        name: "Mcdonalds",
        date: "May 12,2022",
        ammount: "-\$34.16"),
    TransactionModel(
        image: "assets/images/Logo 3.png",
        name: "Apple ",
        date: "May 8,2022",
        ammount: "-\$1000.92"),
    TransactionModel(
        image: "assets/images/Logo 2.png",
        name: "Starbucks",
        date: "May 5,2022",
        ammount: "-\$1200.18"),
    TransactionModel(
        image: "assets/images/Logo 4.png",
        name: "Mastercard",
        date: "May 3,2022",
        ammount: "-\$1000.56"),
    TransactionModel(
        image: "assets/images/briefcase.png",
        name: "Freelancer",
        date: "May 1,2022",
        ammount: "-\$3300.81"),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    _animation = Tween<double>(begin: 1, end: 0).animate(_controller);
    _controller.addListener(() {
      if (mounted && context.mounted) {
        setState(() {});
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.repeat();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor().backgorund1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                children: [
                  Image.asset("assets/images/Ellipse 249.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back!",
                        style: CommonTextStyle().style1,
                      ),
                      Text(
                        "Sandy Chungus",
                        style: CommonTextStyle().style2,
                      )
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      print("Object");
                    },
                    splashColor: CommonColor().background2,
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/icons/Huge-icon.png",
                      scale: 0.8,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      print("object");
                    },
                    splashColor: CommonColor().background2,
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/icons/More_Vertical.png",
                      scale: 0.8,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 90,
                    right: 80,

                    child: 
                  Column(
                    children: [
                      const Text("\$5,643.50",style: TextStyle(
                        fontSize: 20,fontFamily: 'Poppins',fontWeight: FontWeight.w600,color: Colors.white
                      ),)
                    ],
                  )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
