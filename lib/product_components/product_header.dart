import 'package:flutter/material.dart';
import '../const.dart';

class ProductHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 108,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo-onwhite.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Container(
          height: 108,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo-onwhite.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        )
      ],
    );
  }
}
