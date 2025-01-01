import 'package:e_commerce/Routes/AppRoutes.dart';
import 'package:e_commerce/pages/First_UI.dart';
import 'package:e_commerce/pages/Skip_UI/First_Skip_UI.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (context) {
            final routes = AppRoutes.getRoutes(context);
            return routes[settings.name]?.call(context) ?? const Scaffold();
          });
        },
        // home: First_UI());
        home: First_Skip_UI());
  }
}
