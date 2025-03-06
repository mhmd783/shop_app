import 'package:flutter/material.dart';
import 'package:shop_app/companat/colorsApp.dart';

class Imagebourding extends StatelessWidget {
  Imagebourding({super.key, required this.image});
  late String image;
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: colorsApp.yellowApp,
      ),
      child: Image.asset(image),
    );
  }
}
