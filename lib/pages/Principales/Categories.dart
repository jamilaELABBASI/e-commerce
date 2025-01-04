import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:e_commerce/pages/Principales/Super_Flash_Sale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Models/Popular_Product_Model.dart';
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

  final List<PopularProductModel> products = [
    PopularProductModel(
      titre: 'T-shirt Homme',
      description: 'Un t-shirt confortable pour homme.',
      image: 'images/popular_products/tshirt.jpg',
      ancienPrix: 29.99,
      nouveauPrix: 19.99,
    ),
    PopularProductModel(
      titre: 'Jean Femme',
      description: 'Un jean slim pour femme.',
      image: 'images/popular_products/jean.jpg',
      ancienPrix: 49.99,
      nouveauPrix: 39.99,
    ),
    PopularProductModel(
      titre: 'Veste en Cuir',
      description: 'Une veste en cuir élégante.',
      image: 'images/popular_products/veste.jpg',
      ancienPrix: 99.99,
      nouveauPrix: 79.99,
    ),
    PopularProductModel(
      titre: 'T-shirt Homme',
      description: 'Un t-shirt confortable pour homme.',
      image: 'images/popular_products/tshirt.jpg',
      ancienPrix: 29.99,
      nouveauPrix: 19.99,
    ),
    PopularProductModel(
      titre: 'Jean Femme',
      description: 'Un jean slim pour femme.',
      image: 'images/popular_products/jean.jpg',
      ancienPrix: 49.99,
      nouveauPrix: 39.99,
    ),
    PopularProductModel(
      titre: 'Veste en Cuir',
      description: 'Une veste en cuir élégante.',
      image: 'images/popular_products/veste.jpg',
      ancienPrix: 99.99,
      nouveauPrix: 79.99,
    ),
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
                  height: screenHeight * 0.46,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
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
                                      height: screenHeight * 0.3,
                                      decoration: BoxDecoration(
                                          color: AppColors().blackColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  products[index].image))),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Text(
                                      products[index].titre,
                                      style: AppTextStyle.text3
                                          .copyWith(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Text(
                                      products[index].description,
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
                                        Text(
                                            "\$" +
                                                products[index]
                                                    .nouveauPrix
                                                    .toString(),
                                            style: AppTextStyle.text2.copyWith(
                                                color: AppColors().brownColor)),
                                        Text(
                                          "\$" +
                                              products[index]
                                                  .ancienPrix
                                                  .toString(),
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
