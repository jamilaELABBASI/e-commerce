import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';

class Terms_Service extends StatelessWidget {
  Terms_Service({super.key});

  var data = {
    'title': {"1- Terms", "2- Use license"},
    'content': {
      'Consequat, rhoncus quam auctor non fermentum velit. Sapien mauris amet enim ac nibh enim amet. Lectus orci, id vel sollicitudin. Consequat, eleifend sit consequat amet. Ut hac vulputate tortor, tellus sed sapien ut convallis fringilla. Augue arcu sit odio proin cras purus, nisl. Tempor nunc phasellus tortor at interdum nisl. Nisl consequat aliquet ipsum arcu. Nisl, ullamcorper morbi non integer non vulputate.',
      'Consequat, rhoncus quam auctor non fermentum velit. Sapien mauris amet enim ac nibh enim amet. Lectus orci, id vel sollicitudin. Consequat, eleifend sit consequat amet. Ut hac vulputate tortor, tellus sed sapien ut convallis fringilla. Augue arcu sit odio proin cras purus, nisl. Tempor nunc phasellus tortor at interdum nisl. Nisl consequat aliquet ipsum arcu. Nisl, ullamcorper morbi non integer non vulputate. Lorem malesuada tempor imperdiet nulla nulla integer et. Trincidunt sit mauris fringilla nunc nibh erat quis auctor. Urna auctor molestie lectus sagittis fringilla tincidunt. Eget justo, odio sit vulputate velit cursus.'
    }
  };

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    // Function to return the common widgets

    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Icon(Icons.file_upload_outlined)],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Place the common text at the top
                Text("Last updated April 2020"),
                SizedBox(height: screenHeight * 0.01),
                Text("Terms of services", style: AppTextStyle.text1),
                SizedBox(height: screenHeight * 0.04),

                // ListView.builder with shrinkWrap to ensure proper sizing
                ListView.builder(
                    shrinkWrap:
                        true, // Ensures ListView takes up only the space it needs
                    physics:
                        NeverScrollableScrollPhysics(), // Disable scrolling in ListView
                    itemCount:
                        data['title']?.length ?? 0, // Use the length of 'title'
                    itemBuilder: (context, index) {
                      // Access the title and content for the current index
                      String title = data['title']?.elementAt(index) ?? "";
                      String content = data['content']?.elementAt(index) ?? "";
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Display the dynamic title and content
                          Text(title, style: AppTextStyle.text2),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            content,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: screenHeight * 0.04),
                        ],
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
