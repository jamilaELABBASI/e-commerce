import 'package:e_commerce/Style/AppColors.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  /* List<Widget> body = [
    Icon(
      Icons.ac_unit_outlined,
    ),
    Icon(
      Icons.apps_sharp,
    ),
    Icon(
      Icons.bookmark,
    ),
    Icon(
      Icons.shopping_cart,
    ),
  ];   */

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold();
  }
}
