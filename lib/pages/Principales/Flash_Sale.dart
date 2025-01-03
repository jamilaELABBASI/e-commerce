import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/cupertino.dart';

import '../../Style/AppColors.dart';

class Flash_Sale extends StatefulWidget {
  const Flash_Sale({super.key});

  @override
  State<Flash_Sale> createState() => _Flash_SaleState();
}

class _Flash_SaleState extends State<Flash_Sale> {
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
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    //width: screenWidth * 0.4,
                    child: Row(
                      children: [
                        Container(
                          height: screenHeight * 0.14,
                          width: screenWidth * 0.3,
                          decoration: BoxDecoration(
                              color: AppColors().blackColor,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "images/principale_image1.jpg"))),
                        ),
                        Text("data"),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
