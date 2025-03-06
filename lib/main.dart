import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/prov/prov.dart';
import 'package:shop_app/view/Auth/login.dart';
import 'package:shop_app/view/onboarding/boarding2.dart';
import 'package:shop_app/view/onboarding/boarding3.dart';
import 'package:shop_app/view/onboarding/boarding4.dart';
import 'package:shop_app/view/onboarding/onboarding1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Control();
      },
      child: MaterialApp(
        routes: {
          "boarding1": (context) => Boarding1(),
          "boarding2": (context) => Boarding2(),
          "boarding3": (context) => Boarding3(),
          "boarding4": (context) => Boarding4(),
          "login": (context) => Login(),
        },
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}
