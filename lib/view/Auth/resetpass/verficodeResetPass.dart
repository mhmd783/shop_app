import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/companat/dialogApp.dart';
import 'package:shop_app/companat/inputApp.dart';
import 'package:shop_app/prov/prov.dart';

class VerficodeResetPass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VerficodeResetPass();
  }
}

class _VerficodeResetPass extends State<VerficodeResetPass> {
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
        body: Consumer<Control>(builder: (context, val, child) {
          return Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      "تم إنشاء الحساب بنجاح\nقم بتأكيد حسابك من الرسالة المرسلة عبر الإيميل",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
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
                            child: InputCode(
                          control: val.api.code1,
                          data: "start",
                        )),
                        Expanded(
                            child: InputCode(
                                control: val.api.code2, data: "center")),
                        Expanded(
                            child: InputCode(
                                control: val.api.code3, data: "center")),
                        Expanded(
                            child:
                                InputCode(control: val.api.code4, data: "end")),
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "اعادة ارسال الكود ",
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      )),
                  MaterialButton(
                    onPressed: () {
                      dialogapp.chickDialog(context, () {
                        Navigator.of(context).pushNamed("resetPass");
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 7),
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
          );
        }));
  }
}
