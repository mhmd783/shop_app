import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verficode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Verficode();
  }
}

class _Verficode extends State<Verficode> {
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
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                "تم إنشاء الحساب بنجاح\nقم بتأكيد حسابك من الرسالة المرسلة عبر الإيميل",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                "قم بإدخال رقم التأكيد الخاص بك",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 12),
              ),
            ),
            Container(
              width: 200,
              height: 65,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(2),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "فارغ";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'\d')),
                      ],
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "*",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(2),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "فارغ";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.length == 0) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'\d')),
                      ],
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "*",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(2),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "فارغ";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.length == 0) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'\d')),
                      ],
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "*",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(2),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "فارغ";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.length == 0) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'\d')),
                      ],
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "*",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
