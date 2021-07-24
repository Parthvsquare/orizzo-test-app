import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/util/next_button.dart';

class OrderPlaced extends StatelessWidget {
  // const OrderPlaced({Key? key}) : super(key: key);
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height / 7,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo-onwhite.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: height / 5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/placeholder-01.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 70, right: 70, top: 20),
            child: Text(
              'Ordered Successfully, check details\nin Bookings any time!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: PrimaryColor,
                  fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            width: double.infinity,
            child: Center(
              child: NextButton('order status'),
            ),
          )
        ],
      ),
    );
  }
}
