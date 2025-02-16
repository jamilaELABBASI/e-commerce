import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';

import '../../Models/Popular_Product_Model.dart';
import '../../Style/AppColors.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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

    return Scaffold(
      backgroundColor: AppColors().whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Review your order",
                  style: AppTextStyle.text2,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (context, index) => Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: screenWidth * 0.29,
                                  height: screenHeight * 0.17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image:
                                              AssetImage(products[index].image),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.05,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        products[index].titre,
                                        style: AppTextStyle.text3.copyWith(
                                            color: AppColors().greyColor),
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
                                              style: AppTextStyle.text2
                                                  .copyWith(
                                                      color: AppColors()
                                                          .brownColor)),
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
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                          ],
                        ))
              ],
            ),
            Text(
              "Your Coupon code",
              style: AppTextStyle.text2,
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            TextFormField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                filled: true, // enable fill of field to change his color
                fillColor: AppColors().brownColor,
                label: Row(
                  children: [
                    Icon(
                      Icons.airplane_ticket,
                      color: AppColors().whiteColor,
                    ),
                    Text(
                      " Type coupon code",
                      style: AppTextStyle.text2
                          .copyWith(color: AppColors().whiteColor),
                    )
                  ],
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        width: 10,
                        color: AppColors().brownColor,
                        style: BorderStyle.solid)
                    //gapPadding: 0.6
                    ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors().brownColor),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors().brownColor),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors().greyColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Summary",
                      style: AppTextStyle.text2,
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: AppTextStyle.text3.copyWith(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                        Text(
                          "\$169",
                          style: AppTextStyle.text3
                              .copyWith(color: AppColors().brownColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping Free",
                          style: AppTextStyle.text3.copyWith(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                        Text(
                          "Free",
                          style: AppTextStyle.text3
                              .copyWith(color: AppColors().brownColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount Free",
                          style: AppTextStyle.text3.copyWith(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                        Text(
                          "\$10",
                          style: AppTextStyle.text3
                              .copyWith(color: AppColors().brownColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Divider(
                      color: AppColors().blackColor,
                      thickness: 2, // large of line
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total ( Include of VAT )",
                          style: AppTextStyle.text3.copyWith(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                        Text(
                          "\$185",
                          style: AppTextStyle.text3
                              .copyWith(color: AppColors().brownColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " Estimated VAT",
                          style: AppTextStyle.text3.copyWith(
                              fontWeight: FontWeight.normal, fontSize: 18),
                        ),
                        Text(
                          "\$5",
                          style: AppTextStyle.text3
                              .copyWith(color: AppColors().brownColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: screenHeight * 0.07,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors().brownColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: AppTextStyle.text2
                        .copyWith(color: AppColors().whiteColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
