import 'package:flutter/material.dart';

class HeaderAbout extends StatelessWidget {
  const HeaderAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 108,
          margin: EdgeInsets.only(top: 20, bottom: 40, right: 20, left: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo-onwhite.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Container(
          height: 108,
          margin: EdgeInsets.only(top: 40, bottom: 20, right: 20, left: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Branding-Icons.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }
}
