import 'package:e_commerce/Style/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromoPictures extends StatelessWidget {
  const PromoPictures({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: double.infinity,
          height: screenHeight * 0.35,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/promos/promo1.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Text(
                  "50 %",
                  style: TextStyle(fontSize: 40, color: AppColors().whiteColor),
                ),
                Container(
                  decoration: BoxDecoration(color: AppColors().greyColor),
                  child: Text(
                    "SPECIAL OFFER",
                    style: TextStyle(
                        fontSize: 40,
                        color: AppColors().blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "SUMMER",
                  style: TextStyle(fontSize: 40, color: AppColors().whiteColor),
                ),
                Text(
                  "SALE",
                  style: TextStyle(fontSize: 40, color: AppColors().whiteColor),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Shop now",
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors().whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: screenHeight * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/promos/promo2.jpg"))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(color: AppColors().whiteColor),
                    child: Text(
                      "50 % Off",
                      style: TextStyle(
                          fontSize: 20, color: AppColors().blackColor),
                    ),
                  ),
                  //decoration: BoxDecoration(color: AppColors().greyColor),

                  Text(
                    "BLACK",
                    style: TextStyle(
                        fontSize: 40,
                        color: AppColors().whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "FRIDAY",
                    style: TextStyle(
                        fontSize: 40,
                        color: AppColors().whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "COLLECTION",
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors().whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )),
        SizedBox(
          height: 10,
        ),
        Container(
            height: screenHeight * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/promos/promo3.jpg"))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(color: AppColors().whiteColor),
                    child: Text(
                      "65 % Off",
                      style: TextStyle(
                          fontSize: 20, color: AppColors().blackColor),
                    ),
                  ),
                  //decoration: BoxDecoration(color: AppColors().greyColor),

                  Text(
                    "GRAB",
                    style: TextStyle(
                        fontSize: 40,
                        color: AppColors().whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "YOURS NOW",
                    style: TextStyle(
                        fontSize: 40,
                        color: AppColors().whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
