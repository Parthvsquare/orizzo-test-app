import 'package:flutter/material.dart';
import '../const.dart';

class NextButton extends StatelessWidget {
  var textInButton;
  NextButton(this.textInButton);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text(textInButton),
        )
      ],
    );
  }
}
