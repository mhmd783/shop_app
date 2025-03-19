import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/prov/prov.dart';

class Dialogapp {
  chickDialog(BuildContext context, VoidCallback fun) {
    showDialog(
        context: context,
        builder: (context) {
          return Consumer<Control>(builder: (context, val, child) {
            return AlertDialog(
              content: val.api.data == null
                  ? Container(
                      height: 200,
                      child: Center(child: CircularProgressIndicator()))
                  : Container(
                      height: 180,
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(val.api.data["status"] == true
                                ? "assets/images/seccess.png"
                                : "assets/images/error.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              val.api.data["status"] == true
                                  ? "تمت العملية بنجاح"
                                  : "خطاء ",
                              style: TextStyle(fontFamily: "Vexa"),
                            ),
                          ),
                          MaterialButton(
                            onPressed: val.api.data["status"] == true
                                ? fun
                                : () {
                                    Navigator.of(context).pop();
                                  },
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "موافق",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
            );
          });
        });
  }
}
