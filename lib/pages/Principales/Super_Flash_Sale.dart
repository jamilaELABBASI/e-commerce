import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/cupertino.dart';

class Super_Flash_Sale extends StatefulWidget {
  const Super_Flash_Sale({super.key});

  @override
  State<Super_Flash_Sale> createState() => _Super_Flash_SaleState();
}

class _Super_Flash_SaleState extends State<Super_Flash_Sale> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Stack(
        children: [
          Image.asset("images/principale_image2.jpg"),
          Positioned(
              top: screenWidth * 0.2,
              right: screenWidth * 0.2,
              child: Column(
                children: [
                  Text(
                    capitalizeWords("super flash sale"),
                    style: AppTextStyle.text1.copyWith(
                      color: AppColors().whiteColor,
                    ),
                  ),
                  Text(
                    capitalizeWords("50% off"),
                    style: AppTextStyle.text1.copyWith(
                      color: AppColors().whiteColor,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

String capitalizeWords(String text) {
  return text
      .split(' ') // Split the text into words
      .map((word) => word.isNotEmpty
          ? word[0].toUpperCase() + word.substring(1)
          : '') // Capitalize the first letter of each word
      .join(' '); // Join the words back together with spaces
}
