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
}
