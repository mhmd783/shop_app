import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/companat/dialogApp.dart';
import 'package:shop_app/companat/inputApp.dart';

class EnterEmail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EnterEmail();
  }
}

class _EnterEmail extends State<EnterEmail> {
  Dialogapp dialogapp = new Dialogapp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 0.3)),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.keyboard_arrow_left)),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50, bottom: 70),
                child: Text(
                  "إعادة تعيين كلمة المرور",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 12),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50, bottom: 20),
                child: Text(
                  "قم بإدخال إيميلك",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12),
                ),
              ),
              /////
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextFormField(
                    decoration: InputDecoration(
                  hintText: "ادخل الايميل",
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
              ),
              // TextButton(
              //     onPressed: () {},
              //     child: Text(
              //       "اعادة ارسال الكود ",
              //       style: TextStyle(
              //           color: Colors.blue,
              //           decoration: TextDecoration.underline),
              //     )),
              MaterialButton(
                onPressed: () {
                  dialogapp.chickDialog(context, () {
                    Navigator.of(context).pushNamed("verficodeResetPass");
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "موافق",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
