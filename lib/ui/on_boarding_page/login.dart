import 'package:flutter/material.dart';
// import 'package:orizzo/resources/const.dart';
import 'package:orizzo/util/next_button.dart';
import 'package:orizzo/util/header_about.dart';
import '../on_boarding_component/login_bottom_bt.dart';
import '../on_boarding_component/login_input.dart';
import 'package:orizzo/ui/product_page/product.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: HeaderAbout(),
            ),
          ),
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
                width: double.infinity,
                margin: EdgeInsets.only(right: 150, left: 150),
                child: NextButton('Login'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
            ),
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
