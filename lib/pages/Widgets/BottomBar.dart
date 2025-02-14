import 'package:e_commerce/Style/AppColors.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int get currentIndex => widget.currentIndex;

  final List<Widget> iconsBottom = [
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.apps_sharp),
    Icon(Icons.bookmark),
    Icon(Icons.shopping_cart),
    Icon(Icons.person),
  ];

  final List<String> textBottom = [
    "Shop",
    "Discover",
    "Bookmark",
    "Cart",
    "Profile"
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return BottomNavigationBar(
      backgroundColor: AppColors().blackColor,
      iconSize: screenWidth * 0.099,
      currentIndex: currentIndex,
      onTap: widget.onTap,
      type: BottomNavigationBarType.fixed, // Ensures all icons are visible
      selectedItemColor: AppColors().whiteColor, // Customize active color
      unselectedItemColor: AppColors().greyColor, // Customize inactive color
      items: List.generate(iconsBottom.length, (index) {
        return BottomNavigationBarItem(
          label: textBottom[index],
          icon: iconsBottom[index],
        );
      }),
    );
  }
}
