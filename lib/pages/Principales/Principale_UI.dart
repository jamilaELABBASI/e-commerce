import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:e_commerce/pages/Principales/BestSellers.dart';
import 'package:e_commerce/pages/Principales/Categories.dart';
import 'package:e_commerce/pages/Principales/Flash_Sale.dart';
import 'package:e_commerce/pages/Principales/PromoPictures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Super_Flash_Sale.dart';

class Principale_UI extends StatefulWidget {
  const Principale_UI({super.key});

  @override
  State<Principale_UI> createState() => _Principale_UIState();
}

class _Principale_UIState extends State<Principale_UI> {
  final List<String> images = [
    "images/principale_image1.jpg",
    "images/principale_image2.jpg",
    "images/principale_image3.jpg"
  ];

  final List<List<String>> texts = [
    ["50 % off", "Grab", "Yours Now"],
    ["BLACK", "FRIDAY", "COLLECTION"],
    ["SPECIAL OFFER", "SUMMER", "SALES", "UP TO 80% OFF"]
  ];

  final List<String> categories = [
    "All Categories",
    "On Sale",
    "Man's",
    "Woman's",
    "Kids"
  ];

  final List<String> icons_categories = ["", ""];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Shopion"),
              Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: screenWidth * 0.04,
                  ),
                  Icon(Icons.notifications_active_rounded)
                ],
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: images.length,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        // Image
                        Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height:
                              screenHeight * 0.5, // Set a height for the image
                        ),
                        // Positioned Text on top of image
                        Positioned(
                          bottom:
                              screenHeight * 0.32, // position from the bottom
                          left: screenWidth * 0.32, // position from the left
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: texts[index].asMap().entries.map((entry) {
                              int textIndex = entry.key;
                              String text = entry.value;
                              // Apply different styles for each text in the list
                              return Text(
                                text,
                                style: _getTextStyleForIndex(textIndex),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Categories(),
            Super_Flash_Sale(),
            Flash_Sale(),
            PromoPictures(),
            Bestsellers()
          ],
        ));
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
