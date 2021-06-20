import 'package:flutter/material.dart';
import '../other_components/next_button.dart';
import '../other_components/header_about.dart';
import '../const.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({Key? key}) : super(key: key);

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
          child: NextButton('next'),
        ),
        Container(
          child: Text("Skip this"),
        )
      ],
    );
  }
}
