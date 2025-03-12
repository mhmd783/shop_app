import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/companat/dialogApp.dart';
import 'package:shop_app/prov/prov.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {
  Dialogapp dialogapp = new Dialogapp();
  // final GlobalKey<FormState> formState = GlobalKey();
  final GlobalKey<FormState> formState = new GlobalKey();
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
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: formState,
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 70, 72, 85),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("login");
                                },
                                child: Text(
                                  "تسجيل دخول",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.orange),
                            child: Center(
                              child: Text(
                                "انشاء حساب",
                                style: TextStyle(color: Colors.white),
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
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 5, right: 30),
                              child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "فارغ";
                                    }
                                  },
                                  controller: val.api.frist_name,
                                  decoration: InputDecoration(
                                    hintText: "الاسم الاول ",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 5, left: 30),
                              child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "فارغ";
                                    }
                                  },
                                  controller: val.api.last_name,
                                  decoration: InputDecoration(
                                    hintText: "الاسم الثاني",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "فارغ";
                            }
                          },
                          controller: val.api.email,
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
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "فارغ";
                            }
                          },
                          controller: val.api.password,
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
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "فارغ";
                            }
                            if (value != val.api.password.text) {
                              return "كلمة غير متطابقة";
                            }
                          },
                          controller: val.api.passsword_confirmation,
                          obscureText: val.showpass2,
                          decoration: InputDecoration(
                            hintText: "تاكيد كلمة المرور",
                            suffixIcon: IconButton(
                              onPressed: () {
                                val.changeShowPass2();
                              },
                              icon: Icon(
                                val.showpass2 == false
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
                    MaterialButton(
                      onPressed: () {
                        if (formState.currentState!.validate()) {
                          val.api.Register();
                          dialogapp.chickDialog(context, () {
                            Navigator.of(context).pushNamed("verfiCode");
                          });
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 49, 46, 46),
                        ),
                        child: Text(
                          "تسجيل الحساب",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
