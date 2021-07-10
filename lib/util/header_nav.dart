import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderNavigation extends StatelessWidget {
  const HeaderNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Icon(
              Icons.arrow_back_ios,
              size: 30.0,
              semanticLabel: 'Text to announce in accessibility modes',
              color: Colors.black,
            ),
          ),
          Container(
            width: 120,
            child: Image.asset(
              'assets/logo-landscape.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderActionNav extends StatefulWidget {
  const HeaderActionNav({Key? key}) : super(key: key);

  @override
  _HeaderActionNavState createState() => _HeaderActionNavState();
}

class _HeaderActionNavState extends State<HeaderActionNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Image.asset(
              'assets/addtocart-01.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Image.asset(
              'assets/menu-01.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
