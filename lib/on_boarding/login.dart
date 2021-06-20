import 'package:flutter/material.dart';
import '../const.dart';
import '../other_components/header_about.dart';
import '../other_components/next_button.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderAbout(),
        Container(
          child: Text('NEW TO CITY? GET YOUR FAVORITE HERE'),
        ),
        Container(
          child: Text(
              'Search how specific you need! According to availability, location or wish?'),
        ),
        Container(
          child: NextButton('login'),
        ),
        Container(
          child: Text("Skip this"),
        )
      ],
    );
  }
}
