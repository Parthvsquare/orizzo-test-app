import 'package:flutter/material.dart';
import '../const.dart';

class LeftBar extends StatelessWidget {
  var inclinedText;
  LeftBar(this.inclinedText);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 108,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo-onblack.png'),
              // fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          child: Text(inclinedText),
        )
      ],
    );
  }
}
