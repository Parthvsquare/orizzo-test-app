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
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            child: Text(
              "you're in: r.s puram, coimatore".toUpperCase(),
              style: TextStyle(
                // height: 1.5,
                fontSize: 14,
                color: PrimaryColor,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                fontFamily: 'Cera',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20, left: 20),
            // heig
            child: Icon(
              Icons.arrow_circle_down,
              color: PrimaryAssentColor,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
