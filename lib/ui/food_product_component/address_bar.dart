import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orizzo/resources/const.dart';

class AddressBar extends StatefulWidget {
  const AddressBar({Key? key}) : super(key: key);

  @override
  _AddressBarState createState() => _AddressBarState();
}

class _AddressBarState extends State<AddressBar> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Container(
        child: Text(
          "you;re in: r.s puram, coimatore",
          style: TextStyle(
            height: 0.7,
            fontSize: 16,
            color: PrimaryColor,
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.none,
            fontFamily: 'Cera',
          ),
        ),
      ),
    );
  }
}
