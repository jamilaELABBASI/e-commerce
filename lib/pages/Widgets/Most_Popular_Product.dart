import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Style/AppColors.dart';
import '../../Style/AppTextStyle.dart';

class Most_Popular_Product extends StatelessWidget {
  final String titre;
  final String description;
  final String image;
  final String ancien_prix;
  final String nouveau_prix;
  Most_Popular_Product({
    super.key,
    required this.titre,
    required this.description,
    required this.image,
    required this.ancien_prix,
    required this.nouveau_prix,
  });

  @override
  Widget build(BuildContext context) {
    //var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: screenWidth * 0.64,
        decoration: BoxDecoration(
            color: AppColors().brownColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: double.infinity,
              width: screenWidth * 0.3,
              decoration: BoxDecoration(
                  color: AppColors().blackColor,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image))),
            ),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            Container(
              width: screenWidth * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    titre,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.text3
                        .copyWith(color: AppColors().whiteColor),
                  ),
                  Text(
                    description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.text4
                        .copyWith(fontSize: 14, color: AppColors().whiteColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$" + ancien_prix.toString(),
                        style: TextStyle(color: AppColors().whiteColor),
                      ),
                      Text(
                        "\$" + nouveau_prix.toString(),
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: AppColors().whiteColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

    /*Container(
      //height: screenHeight * 0.1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: screenWidth * 0.8,
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
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover, image: AssetImage(""))),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        titre,
                        style: AppTextStyle.text3.copyWith(color: Colors.grey),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        description,
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
                          Text("\$" + nouveau_prix,
                              style: AppTextStyle.text2
                                  .copyWith(color: AppColors().brownColor)),
                          Text(
                            "\$" + ancien_prix,
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );*/
  }
}
