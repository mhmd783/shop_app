import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputCode extends StatelessWidget {
  InputCode({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          if (data == "start") {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          }
          if (data == "center") {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0) {
              FocusScope.of(context).previousFocus();
            }
          }
          if (data == "end") {
            if (value.length == 0) {
              FocusScope.of(context).previousFocus();
            }
          }
        },
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'\d')),
        ],
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: "*",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
