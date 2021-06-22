import 'package:flutter/material.dart';
import '../const.dart';

class ProductGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Food product'.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: PrimaryColor,
                      fontFamily: 'Cera',
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 0.7,
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Food product'.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: PrimaryColor,
                      fontFamily: 'Cera',
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 0.7,
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Food product'.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: PrimaryColor,
                      fontFamily: 'Cera',
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 0.7,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      fit: BoxFit.cover,
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
                ),
                Container(
                  height: 80,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Food product'.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: PrimaryColor,
                      fontFamily: 'Cera',
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 0.7,
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Food product'.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: PrimaryColor,
                      fontFamily: 'Cera',
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 0.7,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
