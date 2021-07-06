import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import '../food_product_page/food_product.dart';

class ProductIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodProduct()),
                );
              },
              child: Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/food-products-01.png'),
                    // fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'Food product'.toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: PrimaryColor,
                  fontFamily: 'Cera',
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                  height: 0.7,
                ),
              ),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/table-booking-01.png'),
                  // fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              child: Text(
                'Table booking'.toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: PrimaryColor,
                  fontFamily: 'Cera',
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,
                  height: 0.7,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
