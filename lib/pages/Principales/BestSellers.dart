import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/cupertino.dart';

import '../../Models/Popular_Product_Model.dart';

class Bestsellers extends StatefulWidget {
  Bestsellers({super.key});

  @override
  State<Bestsellers> createState() => _BestsellersState();
}

class _BestsellersState extends State<Bestsellers> {
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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "data",
              style: AppTextStyle.text1,
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                  //color: AppColors().brownColor,
                  ),
              height: screenHeight * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) => Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    width: screenWidth * 0.4,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors().greyColor,
                          //width: screenWidth * 0.005,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                              Text(
                                  "\$" + products[index].nouveauPrix.toString(),
                                  style: AppTextStyle.text2
                                      .copyWith(color: AppColors().brownColor)),
                              Text(
                                "\$" + products[index].ancienPrix.toString(),
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
