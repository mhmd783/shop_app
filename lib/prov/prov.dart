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

  Register() async {
    await api.Register();
    notifyListeners();
  }

  Login() async {
    await api.Login();
    notifyListeners();
  }

  Verfy() async {
    await api.Verfy();
    notifyListeners();
  }

  Prodect() async {
    await api.Prodect();
    notifyListeners();
  }

  var onprodect = null;
  OnProdect(int i) {
    onprodect = api.prodect['data'][i];
    notifyListeners();
  }
}
