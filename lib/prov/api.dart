import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Api {
  String ip = "https://mangamediaa.com/E-commerce/public";

  TextEditingController frist_name = new TextEditingController();
  TextEditingController last_name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController passsword_confirmation = new TextEditingController();
  var data = null;
  var register = null;
  Register() async {
    register = null;
    data = null;
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

    // if (response.statusCode == 200) {
    register = jsonDecode(response.body);
    data = jsonDecode(response.body);
    // }
    print("respons == ${response.body}");
  }

  TextEditingController email_signin = new TextEditingController();
  TextEditingController password_signin = new TextEditingController();
  String token = '';
  var login = null;
  Login() async {
    login = null;
    data = null;
    String uri = "$ip/api/login";
    var response = await http.post(Uri.parse(uri), headers: {
      "Accept": "application/json",
      "lang": "en"
    }, body: {
      "email": "${email_signin.text}",
      "password": "${password_signin.text}",
    });

    // if (response.statusCode == 200) {
    login = jsonDecode(response.body);
    data = jsonDecode(response.body);
    // }
    print("respons == ${response.body}");
  }

  TextEditingController code1 = new TextEditingController();
  TextEditingController code2 = new TextEditingController();
  TextEditingController code3 = new TextEditingController();
  TextEditingController code4 = new TextEditingController();

  var verfy = null;
  Verfy() async {
    verfy = null;
    data = null;
    String uri = "$ip/api/verify-otp";
    var response = await http.post(Uri.parse(uri), headers: {
      "Accept": "application/json",
    }, body: {
      "email": "${email.text}",
      "otp": "${code1.text}${code2.text}${code3.text}${code4.text}"
    });

    // if (response.statusCode == 200) {
    verfy = jsonDecode(response.body);
    data = jsonDecode(response.body);

    // }
  }

  var prodect = null;
  Prodect() async {
    prodect = null;
    String uri = "$ip/api/products";
    var response = await http.get(Uri.parse(uri), headers: {
      "Accept": "application/json",
      "Authorization": "Bearer ${login['data']['token']}",
    });
    prodect = jsonDecode(response.body);
    print(prodect);
    print(prodect);
    print(prodect);
  }
}
