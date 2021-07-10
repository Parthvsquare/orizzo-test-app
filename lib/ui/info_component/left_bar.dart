import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orizzo/resources/const.dart';

// ignore: must_be_immutable
class LeftBar extends StatelessWidget {
  var inclinedText;
  LeftBar(this.inclinedText);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: PrimaryColor,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo-onblack.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.all(30),
              // margin: EdgeInsets.only(bottom: 50),
              child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  inclinedText.toUpperCase(),
                  style: TextStyle(
                    fontSize: 18,
                    color: PrimaryAssentColor,
                    fontFamily: 'Cera',
                    fontWeight: FontWeight.w700,
                    height: 0.9,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
