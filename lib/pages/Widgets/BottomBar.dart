import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;
  const BottomBar(
      {super.key, required this.selectedIndex, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return BottomAppBar(
      color: Colors.black,
      height: screenWidth * 0.15,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.ac_unit_outlined,
                size: screenWidth * 0.08,
                color: Colors.white,
              ),
              onPressed: () => onItemSelected(0),
            ),
            IconButton(
              icon: Icon(
                Icons.apps_sharp,
                size: screenWidth * 0.08,
                color: Colors.white,
              ),
              onPressed: () => onItemSelected(1),
            ),
            IconButton(
              icon: Icon(
                Icons.bookmark,
                size: screenWidth * 0.08,
                color: Colors.white,
              ),
              onPressed: () => onItemSelected(2),
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: screenWidth * 0.08,
                color: Colors.white,
              ),
              onPressed: () => onItemSelected(3),
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                size: screenWidth * 0.08,
                color: Colors.white,
              ),
              onPressed: () => onItemSelected(4),
            ),
          ],
        ),
      ),
    );
  }
}
