import 'package:flutter/material.dart';

class HeaderAbout extends StatelessWidget {
  const HeaderAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 108,
          margin: EdgeInsets.only(top: 100, bottom: 20, right: 60, left: 60),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo-onwhite.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Container(
          height: 108,
          margin: EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Branding-Icons.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
