import 'package:flutter/material.dart';

class Control extends ChangeNotifier {
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
