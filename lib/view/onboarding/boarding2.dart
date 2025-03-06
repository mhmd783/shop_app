import 'package:flutter/material.dart';
import 'package:shop_app/companat/colorsApp.dart';
import 'package:shop_app/companat/imagebourding.dart';

class Boarding2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Boarding2();
  }
}

class _Boarding2 extends State<Boarding2> {
  ColorsApp colorsApp = new ColorsApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(top: 60, right: 10),
                  height: 30,
                  width: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: colorsApp.pageapp,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text("تخطي"),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Imagebourding(
              image: "assets/images/potato.png",
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "سوقي",
                style: TextStyle(
                    fontSize: 32, color: Colors.black, fontFamily: "Vexa"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 40),
              child: Text(
                textAlign: TextAlign.center,
                "مرحبا بك في سوقي, حيث الأمان و سرعة التوصيل هي  مهارتنا",
                style: TextStyle(
                    fontSize: 20, color: Colors.black, fontFamily: "Vexa2"),
              ),
            ),
            Expanded(child: Container()),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 8,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorsApp.pageapp),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: colorsApp.pageapp.withOpacity(0.8),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: colorsApp.pageapp.withOpacity(0.8),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: colorsApp.pageapp.withOpacity(0.8),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: colorsApp.pageapp.withOpacity(0.8),
                  ),
                  Expanded(child: Container()),
                  MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("boarding3");
                      },
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: colorsApp.pageapp,
                        child: Text("التالي"),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
