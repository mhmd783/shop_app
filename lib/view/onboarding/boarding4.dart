import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/companat/colorsApp.dart';
import 'package:shop_app/companat/imagebourding.dart';
import 'package:shop_app/prov/prov.dart';

class Boarding4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Boarding4();
  }
}

class _Boarding4 extends State<Boarding4> {
  ColorsApp colorsApp = new ColorsApp();

  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
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
                image: "assets/images/tomato.png",
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  "حدد اللغة  المناسبة لك",
                  style: TextStyle(fontSize: 30, fontFamily: "vexa"),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  val.choseLan("ar");
                  print(val.checkLan);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      border: val.checkLan == "ar"
                          ? Border.all()
                          : Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text(
                    "اللغة العربية",
                    style: TextStyle(fontSize: 17, fontFamily: "Vexa2"),
                  )),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  val.choseLan("en");
                  print(val.checkLan);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      border: val.checkLan == "en"
                          ? Border.all()
                          : Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text(
                    "English",
                    style: TextStyle(fontSize: 17, fontFamily: "Vexa2"),
                  )),
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
                          Navigator.of(context).pushNamed("login");
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
    });
  }
}
