import 'package:flutter/material.dart';
import '../other_components/next_button.dart';
import '../other_components/header_about.dart';
import '../const.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderAbout(),
          Container(
            alignment: Alignment.center,
            child: Text(
              'NEW TO CITY? GET YOUR \n\nFAVORITE HERE',
              style: TextStyle(
                fontSize: 18,
                color: PrimaryColor,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Container(
            child: Text(
              'Search how specific you need! According to availability, location or wish?',
              style: TextStyle(
                fontSize: 18,
                color: PrimaryColor,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Container(
            child: NextButton('next'),
          ),
          Container(
            child: Text(
              "Skip this",
              style: TextStyle(
                fontSize: 18,
                color: PrimaryColor,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
