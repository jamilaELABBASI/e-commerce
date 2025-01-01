import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:e_commerce/pages/Widgets/Boutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First_Skip_UI extends StatefulWidget {
  First_Skip_UI({super.key});

  @override
  State<First_Skip_UI> createState() => _First_Skip_UIState();
}

class _First_Skip_UIState extends State<First_Skip_UI> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/First_Skip_logo.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      "Notify latest offers & product availability",
                      style: AppTextStyle.text1
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Text(
                        "ba faal kardane notifications shopion , zoodtar az hame az akhbare ma bakhabar shavid ."),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 120),
                      child: Container(
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.09,
                        decoration: BoxDecoration(
                            color: AppColors().greyColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.notifications_none,
                              color: AppColors().blackColor,
                              size: 40,
                            ),
                            Text(
                              "Notifications",
                              style: AppTextStyle.text2
                                  .copyWith(color: AppColors().blackColor),
                            ),
                            Switch(
                              inactiveThumbColor: AppColors().blackColor,
                              inactiveTrackColor: AppColors().whiteColor,
                              activeTrackColor: AppColors().blackColor,
                              activeColor: AppColors().whiteColor,
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = !isSwitched;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Boutton(
                      text: "Next",
                      route: "/Login",
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
