import 'package:flutter/material.dart';

class HeaderAbout extends StatelessWidget {
  const HeaderAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 108,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo-onwhite.png'),
              // fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 108,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Branding-Icons.png'),
              // fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
