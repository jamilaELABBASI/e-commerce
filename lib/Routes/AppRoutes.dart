import 'package:e_commerce/pages/Connection/Login.dart';
import 'package:e_commerce/pages/First_UI.dart';
import 'package:e_commerce/pages/Second_UI.dart';
import 'package:e_commerce/pages/Third_UI.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_commerce/pages/Connection/SignUp.dart';
import '../pages/BottomBarUi/Discover.dart';
import '../pages/Fourth_UI.dart';
import '../pages/Principales/Principale_UI.dart';
import '../pages/Skip_UI/First_Skip_UI.dart';
import '../pages/Terms_Service.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return {
      '/First_UI': (context) => First_UI(),
      '/Second_UI': (context) => Second_UI(),
      '/Third_UI': (context) => Third_Ui(),
      '/Fourth_UI': (context) => Fourth_UI(),
      '/First_Skip_UI': (context) => First_Skip_UI(),
      '/Login': (context) => Login(),
      '/SignUp': (context) => SignUp(),
      '/Terms_Service': (context) => Terms_Service(),
      '/Principale_UI': (context) => Principale_UI(),
      '/Discover': (context) => Discover(),
    };
  }
}
