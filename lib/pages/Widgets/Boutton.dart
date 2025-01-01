import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Boutton extends StatelessWidget {
  var text = '';
  var route;
  final Color? backColor;
  Boutton({super.key, required this.text, this.backColor, required this.route});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.05,
      decoration: BoxDecoration(
          color: AppColors().blackColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(text,
            style: AppTextStyle.text2.copyWith(color: AppColors().whiteColor)),
        style: ButtonStyle(),
      ),
    );
  }
}
