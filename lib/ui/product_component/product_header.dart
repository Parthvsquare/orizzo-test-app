import 'package:flutter/material.dart';
// import 'package:orizzo/resources/const.dart';

class ProductHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            margin: EdgeInsets.only(left: 20),
            width: 80.00,
            height: 80.00,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: ExactAssetImage('assets/logo-onwhite.png'),
                fit: BoxFit.fitHeight,
              ),
            )),
        Container(
          width: 30.00,
          height: 30.00,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/menu-01.png'),
              //fit: BoxFit.fitHeight,
            ),
          ),
        )
      ],
    );
  }
}
