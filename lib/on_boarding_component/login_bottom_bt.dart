import 'package:flutter/material.dart';
import '../const.dart';
import '../product.dart';

class LoginBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductPage()),
              );
            },
            child: Text(
              'Skip Sign-in'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: PrimaryAssentColor,
                fontFamily: 'Cera',
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
                height: 0.7,
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            'Register with orrizo'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: PrimaryAssentColor,
              fontFamily: 'Cera',
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none,
              height: 0.7,
            ),
          ),
        ),
      ],
    );
  }
}
