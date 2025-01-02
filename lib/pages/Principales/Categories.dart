import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/cupertino.dart';

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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          // scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              child: Text(
                categories[index],
                style: AppTextStyle.text3,
              ),
            );
          },
        )
      ],
    );
  }
}
