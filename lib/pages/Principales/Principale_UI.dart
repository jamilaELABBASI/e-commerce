import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:e_commerce/pages/BottomBarUi/Bookmark.dart';
import 'package:e_commerce/pages/BottomBarUi/Discover.dart';
import 'package:e_commerce/pages/BottomBarUi/Shop.dart';

import 'package:flutter/material.dart';

import '../BottomBarUi/Cart.dart';
import '../BottomBarUi/Profile.dart';
import '../Widgets/BottomBar.dart';

class Principale_UI extends StatefulWidget {
  const Principale_UI({super.key});

  @override
  State<Principale_UI> createState() => _Principale_UIState();
}

class _Principale_UIState extends State<Principale_UI> {
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> body = [
    Shop(),
    Discover(),
    Bookmark(),
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    //var screenHeight = MediaQuery.of(context).size.height;
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
      body: IndexedStack(
        index: _currentIndex,
        children: body,
      ),
      bottomNavigationBar: BottomBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
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
