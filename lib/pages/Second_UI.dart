import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';

class Second_UI extends StatelessWidget {
  const Second_UI({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/First_Skip_Ui");
                },
                child: Text(
                  "Skip",
                  style: AppTextStyle.text2,
                ))
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 140),
          child: Column(
            children: [
              Text(
                "Get those shopping",
                style: AppTextStyle.text1,
              ),
              Text("bags filled", style: AppTextStyle.text1),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Text("Add any item you want to your cart, or save it on your"),
              Text("wishlist,so you don't miss it in your future purchases"),
              Container(
                width: screenWidth * 0.6,
                height: screenHeight * 0.4,
                child: Image.asset("images/Second_logo.png"),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Third_UI");
              },
              icon: Icon(
                Icons.arrow_circle_right,
                color: AppColors().voiletColor,
                size: 60,
              ))
        ],
      ),
    );
  }
}
