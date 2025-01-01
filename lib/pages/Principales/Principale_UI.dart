import 'package:flutter/material.dart';

class Principale_UI extends StatefulWidget {
  const Principale_UI({super.key});

  @override
  State<Principale_UI> createState() => _Principale_UIState();
}

class _Principale_UIState extends State<Principale_UI> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shopion"),
            Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                Icon(Icons.notifications_active_rounded)
              ],
            )
          ],
        ),
      ),
      body: Column(),
    );
  }
}
