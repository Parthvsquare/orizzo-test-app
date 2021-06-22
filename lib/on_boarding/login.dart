import 'package:flutter/material.dart';
import '../const.dart';
import '../other_components/header_about.dart';
import '../other_components/next_button.dart';
import '../on_boarding_component/login_bottom_bt.dart';
import '../on_boarding_component/login_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderAbout(),
          Container(
            child: LoginInput(),
          ),
          Container(
            child: NextButton('login'),
          ),
          Container(
            child: LoginBottom(),
          )
        ],
      ),
    );
  }
}
