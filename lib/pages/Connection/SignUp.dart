import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Style/AppColors.dart';
import '../../Style/AppTextStyle.dart';
import '../Widgets/Boutton.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkbox_value = false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    //var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: screenHeight * 0.4,
            child: Image.asset(
              "images/Sign_Up_logo.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Text(
            "Let's get started !",
            style: AppTextStyle.text2
                .copyWith(fontWeight: FontWeight.normal, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Text(
                    "Please enter your valid data in order to create an account."),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email address",
                    prefixIcon: Icon(Icons.mail),
                    filled: true,
                    fillColor: AppColors().greyColor,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: AppColors().greyColor,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkbox_value,
                      onChanged: (value) {
                        setState(() {
                          checkbox_value = !checkbox_value;
                        });
                      },
                    ),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Iagree with the ",
                          style: TextStyle(color: AppColors().blackColor)),
                      TextSpan(
                          text: "Terms of Service",
                          style: TextStyle(
                              color: AppColors().voiletColor,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, "/Terms_Service");
                            }),
                      TextSpan(
                          text: " & privacy policy",
                          style: TextStyle(color: AppColors().blackColor)),
                    ])),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Boutton(
                  text: "Continue",
                  route: "",
                ),
              ],
            ),
          )
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Do you have an account ?"),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Login");
              },
              child: Text(
                "Login",
                style: AppTextStyle.text3,
              ))
        ],
      ),
    );
  }
}
