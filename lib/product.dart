import 'package:flutter/material.dart';
import 'const.dart';

import './product_components/product_header.dart';
import './product_components/product_icons.dart';
import './product_components/product_gallery.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProductHeader(),
          Container(
            child: Text(
              'It\s Easier now',
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
            child: Text(
              'Search how specific you need!\n\nAccording to availability, location or wish? ',
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
          ProductIcons(),
          ProductGallery(),
        ],
      ),
    );
  }
}
