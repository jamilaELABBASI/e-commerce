import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style/AppColors.dart';

class Fourth_UI extends StatelessWidget {
  const Fourth_UI({super.key});

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
                )),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.09,
            ),
            Text(
              "Package tracking",
              style: AppTextStyle.text1,
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text("in particular, Shopion can pack your orders , and help"),
            Text("you seamlessly manage your shipments ."),
            SizedBox(
              height: screenHeight * 0.09,
            ),
            Container(
                width: double.infinity,
                height: screenHeight * 0.4,
                child: Image.asset("images/Fourth_logo.png")),
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Fourth_UI");
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
