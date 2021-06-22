import 'package:flutter/material.dart';
import '../const.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({Key? key}) : super(key: key);

  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: new BorderSide(color: PrimaryAssentColor),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: PrimaryAssentColor),
              borderRadius: BorderRadius.circular(20),
            ),
            labelText: "Enter Registered Mail",
            labelStyle: TextStyle(
              fontSize: 16,
              color: PrimaryColor,
              fontFamily: 'Cera',
            ),
            suffixIcon: Icon(Icons.mail_outline),
            suffixStyle: TextStyle(
              color: PrimaryColor,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: new TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: new BorderSide(color: PrimaryAssentColor),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: new BorderSide(
                    color: Color.fromRGBO(0x219, 0x160, 0x120, 1)),
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: "Enter Password",
              labelStyle: TextStyle(
                fontSize: 16,
                color: PrimaryColor,
                fontFamily: 'Cera',
              ),
              suffixIcon: Icon(Icons.remove_red_eye),
              suffixStyle: TextStyle(
                color: PrimaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
