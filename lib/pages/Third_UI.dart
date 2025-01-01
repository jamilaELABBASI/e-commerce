import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style/AppColors.dart';

class Third_Ui extends StatelessWidget {
  const Third_Ui({super.key});

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
      )),
      body: Center(
        child: Column(
          children: [
            Container(
              width: screenWidth * 0.6,
              height: screenHeight * 0.4,
              child: Image.asset("images/Second_logo.png"),
            ),
            SizedBox(
              height: screenHeight * 0.08,
            ),
            Text(
              "Find the item you've",
              style: AppTextStyle.text2,
            ),
            Text(
              "been looking for",
              style: AppTextStyle.text2,
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text("Here you'll see rich varieties goods,carefully"),
            Text("classified for seamless browsing experience"),
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
