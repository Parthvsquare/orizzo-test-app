import 'package:flutter/material.dart';
import '../other_components/next_button.dart';
import '../other_components/header_about.dart';
import '../product.dart';
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
            padding: EdgeInsets.all(40),
            alignment: Alignment.center,
            child: Text(
              'NEW TO CITY? GET YOUR \n\nFAVORITE HERE',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: PrimaryAssentColor,
                fontFamily: 'Cera',
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
                height: 0.7,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 40, right: 20, left: 20),
            child: Text(
              'Search how specific you need!\n\nAccording to availability, location or wish?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: PrimaryColor,
                fontWeight: FontWeight.w800,
                fontFamily: 'Cera',
                decoration: TextDecoration.none,
                height: 0.7,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 50),
            child: NextButton('next'),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductPage()),
                );
              },
              child: Text(
                "SKIP THIS",
                style: TextStyle(
                  fontSize: 18,
                  color: PrimaryAssentColor,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Cera',
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
