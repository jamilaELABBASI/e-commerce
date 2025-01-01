import 'package:e_commerce/Style/AppColors.dart';
import 'package:e_commerce/Style/AppTextStyle.dart';
import 'package:e_commerce/pages/Widgets/Boutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: screenHeight * 0.4,
            child: Image.asset(
              "images/Login_logo.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Text(
            "Welcome back !",
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
                    "Log in with your data that you intered during your registration"),
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
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password",
                      style: AppTextStyle.text3,
                    )),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Boutton(
                  text: "Login",
                  route: "/Principale_UI",
                ),
              ],
            ),
          )
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Don't have an account ?"),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/SignUp");
              },
              child: Text(
                "Sign Up",
                style: AppTextStyle.text3,
              ))
        ],
      ),
    );
  }
}
