import 'package:e_commerce/Style/AppColors.dart';
import 'package:flutter/cupertino.dart';

import '../../Models/Popular_Product_Model.dart';
import '../../Style/AppTextStyle.dart';

class Bookmark extends StatefulWidget {
  Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2 // 2 items in one line
            ,
            crossAxisSpacing: 10, // space between columns
            mainAxisSpacing: 1, // space between rows
            childAspectRatio: 0.8, // Adjust based on design
          ),
          itemCount: products.length,
          itemBuilder: (context, index) => Center(
            child: Container(
              width: screenWidth * 0.45,
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                //color: AppColors().blackColor,
                border: Border.all(
                    color: AppColors().greyColor, width: screenWidth * 0.008),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: screenHeight * 0.1,
                      //width: screenWidth * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(products[index].image))),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Text(
                      products[index].titre,
                      style: AppTextStyle.text3
                          .copyWith(color: AppColors().greyColor),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$" + products[index].nouveauPrix.toString(),
                            style: AppTextStyle.text2
                                .copyWith(color: AppColors().brownColor)),
                        Text(
                          "\$" + products[index].ancienPrix.toString(),
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
