import 'package:flutter/material.dart';
import '../const.dart';
import '../other_components/header_about.dart';
import '../other_components/next_button.dart';
import '../on_boarding_component/login_bottom_bt.dart';
import '../on_boarding_component/login_input.dart';
import '../product.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Container(
                  child: HeaderAbout(),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(20),
                child: LoginInput(),
              )),
          Expanded(
            flex: 1,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductPage()),
                  );
                },
                child: Container(
                  child: NextButton('Login'),
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: LoginBottom(),
            ),
          )
        ],
      ),
    );
  }
}
