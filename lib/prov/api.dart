import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Api {
  String ip = "https://mangamediaa.com/E-commerce/public";

  TextEditingController frist_name = new TextEditingController();
  TextEditingController last_name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController passsword_confirmation = new TextEditingController();
  var register;
  Register() async {
    String uri = "$ip/api/register";
    var response = await http.post(Uri.parse(uri), headers: {
      "Accept": "application/json",
      "lang": "en"
    }, body: {
      "first_name": "${frist_name.text}",
      "last_name": "${last_name.text}",
      "email": "${email.text}",
      "password": "${password.text}",
      "password_confirmation": "${passsword_confirmation.text}",
    });
    print("respons == ${response.body}");
  }
}
