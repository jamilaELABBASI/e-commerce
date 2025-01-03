import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:e_commerce/pages/Principales/Super_Flash_Sale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Style/AppColors.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> categories = [
    "All Categories",
    "On Sale",
    "Man's",
    "Woman's",
    "Kids"
  ];
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: AppTextStyle.text2,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) => Row(
                      children: [
                        Container(
                            width: screenWidth * 0.4,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors().blackColor),
                                //color: AppColors().voiletColor,
                                color:
                                    index == 0 ? AppColors().brownColor : null,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                //crossAxisAlignment:CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // FaIcon(FontAwesomeIcons.tshirt),
                                  Text(categories[index],
                                      style: index == 0
                                          ? AppTextStyle.text2.copyWith(
                                              color: AppColors().whiteColor)
                                          : AppTextStyle.text2
                                      //.copyWith(color: AppColors().whiteColor),
                                      ),
                                ],
                              ),
                            )),
                        SizedBox(
                          width: screenWidth * 0.02,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "Popular products",
                  style: AppTextStyle.text2,
                ),
                Container(
                  height: screenHeight * 0.29,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                            //color: AppColors().blackColor,
                            border: Border.all(color: AppColors().blackColor),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                                //height: ,
                                // width: double.infinity&,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: screenHeight * 0.14,
                                      decoration: BoxDecoration(
                                          color: AppColors().blackColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "images/principale_image1.jpg"))),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Text(
                                      "LIPSY LONDON",
                                      style: AppTextStyle.text4
                                          .copyWith(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Text(
                                      "Mountain Warehouse for  ",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: AppTextStyle.text2,
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("\$200",
                                            style: AppTextStyle.text2.copyWith(
                                                color: AppColors().brownColor)),
                                        Text(
                                          "\$420",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
