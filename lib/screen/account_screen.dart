import 'package:swift_pay/common/common_color.dart';
import 'package:swift_pay/features/wallet/screen/custom_account_card.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor().backgorund1,
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset("assets/iamages/icons/ArrowLeft 2.png",scale: 0.8,),
              const SizedBox(width: 120,),
               Text("Account",style: TextStyle(
                fontSize: 23,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),),
              const Spacer(),
              const SizedBox(width: 10,),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 200,
            width: 200,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: CommonColor().shine)
            ),
            child: Image.asset("assets/images/girl_profile.jpeg"),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(padding: const EdgeInsets.only(left: 150,top: 10),
          child: Row(children: [
            Text("Card limit : ",style: TextStyle(
              fontSize: 13,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              color: Color(0xFF7B78AA),
            ),),
            Text(
              "\$ 1000",
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.white
              ),
            )
          ],),
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}