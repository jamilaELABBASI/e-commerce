import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:e_commerce/pages/BottomBar/Discover.dart';
import 'package:e_commerce/pages/BottomBar/Shop.dart';
import 'package:e_commerce/pages/Principales/BestSellers.dart';
import 'package:e_commerce/pages/Principales/Categories.dart';
import 'package:e_commerce/pages/Principales/Flash_Sale.dart';
import 'package:e_commerce/pages/Principales/PromoPictures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/BottomBar.dart';
import 'Super_Flash_Sale.dart';

class Principale_UI extends StatefulWidget {
  const Principale_UI({super.key});

  @override
  State<Principale_UI> createState() => _Principale_UIState();
}

class _Principale_UIState extends State<Principale_UI> {
  int _currentIndex = 0;
  List<Widget> body = [
    Shop(),
    Discover(),
    Shop(),
    Discover(),
    Shop(),
  ];
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _currentIndex == 1
          ? null
          : AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.black,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shopion",
                    style: AppTextStyle.text1
                        .copyWith(color: AppColors().whiteColor),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: screenWidth * 0.08,
                        color: AppColors().whiteColor,
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Icon(
                        size: screenWidth * 0.08,
                        Icons.notifications_active_rounded,
                        color: AppColors().whiteColor,
                      )
                    ],
                  )
                ],
              ),
            ),
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: screenWidth * 0.099,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Shop",
            backgroundColor: AppColors().blackColor,
            icon: Icon(
              Icons.shopify_sharp,
              color: AppColors().whiteColor,
            ),
          ),
          BottomNavigationBarItem(
            label: "Discover",
            backgroundColor: AppColors().blackColor,
            icon: Icon(
              Icons.apps_sharp,
              color: AppColors().whiteColor,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors().blackColor,
            label: "Bookmark",
            icon: Icon(
              Icons.bookmark,
              color: AppColors().whiteColor,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors().blackColor,
            label: "Cart",
            icon: Icon(
              Icons.shopping_cart,
              color: AppColors().whiteColor,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors().blackColor,
            label: "Profile",
            icon: Icon(
              Icons.person,
              color: AppColors().whiteColor,
            ),
          )
        ],
      ),
    );
  }

  // A helper function to return a specific text style for each index
  TextStyle _getTextStyleForIndex(int index) {
    switch (index) {
      case 0:
        return TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: AppColors().whiteColor,
          backgroundColor: Colors.black.withOpacity(0.5),
        );
      case 1:
        return TextStyle(
          fontSize: 24,
          //fontStyle: FontStyle.italic,
          color: AppColors().whiteColor,
          backgroundColor: Colors.black.withOpacity(0.5),
        );
      case 2:
        return TextStyle(
          fontSize: 22,
          //fontWeight: FontWeight.normal,
          color: AppColors().whiteColor,
          backgroundColor: Colors.black.withOpacity(0.4),
        );
      case 3:
        return TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors().whiteColor,
          backgroundColor: Colors.black.withOpacity(0.6),
        );
      default:
        return TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: AppColors().whiteColor,
          backgroundColor: Colors.black.withOpacity(0.3),
        );
    }
  }
}
