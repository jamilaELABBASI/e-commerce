import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/Routes/AppRoutes.dart';

import 'Second_UI.dart';

class First_UI extends StatelessWidget {
  const First_UI({super.key});
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
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
      )),
      body: Center(
        child: Column(
          children: [
            Container(
              width: screenWidth * 0.6,
              height: screenHeight * 0.4,
              child: Image.asset("images/First_logo.png"),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Column(
              children: [
                Text(
                  "Find the item you've",
                  style: AppTextStyle.text1,
                ),
                Text(
                  "been looking for",
                  style: AppTextStyle.text1,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text("Here you'll see rich varieties of goods , carefully"),
                Text("classified for seamless browsing experience"),
              ],
            )
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Second_UI");
              },
              icon: Icon(
                Icons.arrow_circle_right,
                size: 60,
                color: AppColors().voiletColor,
              ))
        ],
      ),
    );
  }
}
