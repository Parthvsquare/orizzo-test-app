import 'package:flutter/material.dart';
import '../const.dart';

class LoginInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter a search term'),
          ),
        ],
      ),
    );
  }
}
