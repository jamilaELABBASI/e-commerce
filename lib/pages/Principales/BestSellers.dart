import 'package:flutter/cupertino.dart';

class Bestsellers extends StatelessWidget {
  const Bestsellers({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/promos/promo1.jpg"))),
                  ),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("Price")
                ],
              ),
            ),
          ),
        ));
  }
}
