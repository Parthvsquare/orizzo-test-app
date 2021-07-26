import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/ui/on_boarding_page/login.dart';
import 'package:orizzo/util/next_button.dart';

class RegisterationPage extends StatefulWidget {
  const RegisterationPage({Key? key}) : super(key: key);

  @override
  _RegisterationPageState createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
              'register now'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: PrimaryAssentColor,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  child: RegisterInputField(
                      hintname: 'Enter Registered Mail',
                      sufixicon: Icons.mail_outline),
                ),
                Container(
                  child: RegisterInputField(
                    hintname: 'Enter Mobile',
                    sufixicon: Icons.remove_red_eye,
                  ),
                ),
                Container(
                  child: RegisterInputField(
                    hintname: 'Enter Password',
                    sufixicon: Icons.remove_red_eye,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: width / 3, right: width / 3),
            width: double.infinity,
            child: Center(
              child: NextButton('register'),
            ),
          ),
          Padding(padding: EdgeInsets.all(30)),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    'Skip sign-in'.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: PrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Login'.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: PrimaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RegisterInputField extends StatefulWidget {
  final String hintname;
  final sufixicon;

  const RegisterInputField(
      {Key? key, required this.hintname, required this.sufixicon})
      : super(key: key);

  @override
  _RegisterInputFieldState createState() => _RegisterInputFieldState();
}

class _RegisterInputFieldState extends State<RegisterInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: widget.hintname,
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
          suffixIcon: Icon(widget.sufixicon),
          suffixStyle: TextStyle(
            color: PrimaryColor,
          ),
        ),
      ),
    );
  }
}
