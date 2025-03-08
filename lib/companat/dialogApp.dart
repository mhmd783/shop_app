import 'package:flutter/material.dart';

class Dialogapp {
  chickDialog(BuildContext context, VoidCallback fun) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 180,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.asset("assets/images/seccess.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "تمت العملية بنجاح",
                      style: TextStyle(fontFamily: "Vexa"),
                    ),
                  ),
                  MaterialButton(
                    onPressed: fun,
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "موافق",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
