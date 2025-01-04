import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:e_commerce/pages/Widgets/Most_Popular_Product.dart';
import 'package:flutter/cupertino.dart';

import '../../Models/Popular_Product_Model.dart';
import '../../Style/AppColors.dart';

class Flash_Sale extends StatefulWidget {
  const Flash_Sale({super.key});

  @override
  State<Flash_Sale> createState() => _Flash_SaleState();
}

class _Flash_SaleState extends State<Flash_Sale> {
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

    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Most popular",
            style: AppTextStyle.text2,
          ),
          Container(
            height: screenHeight * 0.20,
            //width: screenWidth * 0.6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Most_Popular_Product(
                    titre: products[index].titre,
                    description: products[index].description,
                    image: products[index].image,
                    ancien_prix: products[index].ancienPrix.toString(),
                    nouveau_prix: products[index].nouveauPrix.toString());
              },
            ),
          )
        ],
      ),
    );
  }
}
