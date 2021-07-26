import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/util/next_button.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(height / 14)),
          Container(
            height: height / 7,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo-onwhite.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              'forgot password?'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: PrimaryAssentColor,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(width / 12),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter Register Mail',
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w300, color: PrimaryColor),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryAssentColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryAssentColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PrimaryAssentColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: Icon(Icons.mail_outline),
                suffixStyle: TextStyle(
                  color: PrimaryColor,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
            // width: double,
            alignment: Alignment.centerRight,
            child: NextButton('Send reset link'),
          )
        ],
      ),
    );
  }
}
