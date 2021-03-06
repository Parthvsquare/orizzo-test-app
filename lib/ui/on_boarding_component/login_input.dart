import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/ui/forgot_password/forgot_password_page.dart';

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
            prefixIcon: Icon(
              Icons.ac_unit,
              color: Colors.transparent,
              size: 8,
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
                borderSide: new BorderSide(color: PrimaryAssentColor),
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
              prefixIcon: Icon(
                Icons.ac_unit,
                color: Colors.transparent,
                size: 8,
              ),
            ),
          ),
        ),
        Container(
          height: 10,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
              );
            },
            child: Text(
              'Forgot Password?',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14,
                color: PrimaryColor,
                fontFamily: 'Cera',
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.none,
                height: 0.7,
              ),
            ),
          ),
        )
      ],
    );
  }
}
