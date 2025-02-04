import 'package:flutter/material.dart';

import '../../Style/AppColors.dart';
import '../../Style/AppTextStyle.dart';
import '../Widgets/BottomBar.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        // delete rollback symbol
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shopion",
              style: AppTextStyle.text1.copyWith(color: AppColors().blackColor),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: screenWidth * 0.08,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_rounded,
                      size: screenWidth * 0.08,
                    ))
              ],
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Center(
            child: Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.06,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors().blackColor),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(0.08),
                      child: Icon(
                        Icons.search,
                        color: AppColors().greyColor,
                        size: screenWidth * 0.08,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                              color: AppColors().greyColor,
                              width: screenWidth * 0.005,
                            ))),
                            child: TextFormField(
                              //autofocus: false,
                              //textInputAction: TextInputAction.none,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: "Find somthing",
                                floatingLabelBehavior:
                                    // disable labeltext in the top of field when you clicked inside it
                                    FloatingLabelBehavior.never,
                                border: InputBorder.none,
                              ),
                            ))),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.all(0.08),
                      child: Icon(
                        Icons.tune,
                        color: AppColors().greyColor,
                        size: screenWidth * 0.08,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Categories",
                      style: AppTextStyle.text2,
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_offer),
                        SizedBox(
                          width: screenWidth * 0.05,
                        ),
                        Text(
                          "On sale",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.people_alt),
                        SizedBox(
                          width: screenWidth * 0.05,
                        ),
                        Text(
                          "Man's & Woman's",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.stroller),
                        SizedBox(
                          width: screenWidth * 0.05,
                        ),
                        Text(
                          "Kids",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.watch_sharp),
                        SizedBox(
                          width: screenWidth * 0.05,
                        ),
                        Text(
                          "Accessories",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
