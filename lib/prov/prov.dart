import 'package:flutter/material.dart';
import 'package:shop_app/prov/api.dart';

class Control extends ChangeNotifier {
  Api api = new Api();
  String checkLan = "";
  choseLan(String value) {
    checkLan = value;
    notifyListeners();
  }

  bool showpass = false;
  changeShowPass() {
    showpass = !showpass;
    print(showpass);
    notifyListeners();
  }

  bool showpass2 = false;
  changeShowPass2() {
    showpass2 = !showpass2;
    print(showpass2);
    notifyListeners();
  }
}
