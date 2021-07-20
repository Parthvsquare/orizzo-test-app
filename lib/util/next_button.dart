import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';

// ignore: must_be_immutable
class NextButton extends StatelessWidget {
  var textInButton;
  NextButton(this.textInButton);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(height: 10, color: PrimaryAssentColor),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textInButton.toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                  color: PrimaryColor,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.none,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(Icons.arrow_forward_sharp, size: 20),
              ),
            ],
          )),
          Divider(height: 10, color: PrimaryAssentColor)
        ],
      ),
    );
  }
}
