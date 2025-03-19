import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/prov/prov.dart';
import 'package:shop_app/view/Auth/login.dart';
import 'package:shop_app/view/Auth/register.dart';
import 'package:shop_app/view/Auth/resetpass/enterEmail.dart';
import 'package:shop_app/view/Auth/resetpass/resetpass.dart';
import 'package:shop_app/view/Auth/verficode.dart';
import 'package:shop_app/view/cart/cart.dart';
import 'package:shop_app/view/details/details.dart';
import 'package:shop_app/view/home/home.dart';
import 'package:shop_app/view/onboarding/boarding2.dart';
import 'package:shop_app/view/onboarding/boarding3.dart';
import 'package:shop_app/view/onboarding/boarding4.dart';
import 'package:shop_app/view/onboarding/onboarding1.dart';
import 'view/Auth/resetpass/verficodeResetPass.dart';

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
          "register": (context) => Register(),
          "verfiCode": (context) => Verficode(),
          "enterEmail": (context) => EnterEmail(),
          "verficodeResetPass": (context) => VerficodeResetPass(),
          "resetPass": (context) => ResetPass(),
          "home": (context) => Home(),
          "cart": (context) => Cart(),
          "details": (context) => Details()
        },
        debugShowCheckedModeBanner: false,
        home: Boarding1(),
      ),
    );
  }
}
