import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/companat/dialogApp.dart';
import 'package:shop_app/prov/prov.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  Dialogapp dialogapp = new Dialogapp();
  @override
  Widget build(BuildContext context) {
    return Consumer<Control>(builder: (context, val, child) {
      return Scaffold(
        backgroundColor: Colors.white,
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
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 70, 72, 85),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.orange),
                        child: Center(
                          child: Text(
                            "تسجيل دخول",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("register");
                            },
                            child: Text(
                              "انشاء حساب",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Text(
                    "أدخل بياناتك لتبدء",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Vexa2",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: TextFormField(
                      obscureText: val.showpass,
                      decoration: InputDecoration(
                        hintText: "ادخل كلمة السر",
                        suffixIcon: IconButton(
                          onPressed: () {
                            val.changeShowPass();
                          },
                          icon: Icon(
                            val.showpass == false
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "هل نسيت كلمة المرمر",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    )),
                // Spacer(),
                MaterialButton(
                  onPressed: () {
                    dialogapp.chickDialog(context, () {
                      Navigator.of(context).pushNamed("home");
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 49, 46, 46),
                    ),
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
