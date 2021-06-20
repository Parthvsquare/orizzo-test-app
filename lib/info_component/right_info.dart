import 'package:flutter/material.dart';
import '../other_components/next_button.dart';
import '../const.dart';

class RightInfo extends StatelessWidget {
  var bottomText;
  var theImage;
  RightInfo(this.bottomText, this.theImage);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text(theImage),
        ),
        Container(
          child: NextButton('next'),
        ),
        Container(
          child: Text(bottomText),
        )
      ],
    );
  }
}
