import 'package:flutter/material.dart';

class Control extends ChangeNotifier {
  String checkLan = "";
  choseLan(String value) {
    checkLan = value;
    notifyListeners();
  }
}
