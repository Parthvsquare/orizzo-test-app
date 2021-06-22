import 'package:flutter/foundation.dart';
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
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: ColoredBox(
              color: Colors.white,
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 0),
                child: ProductHeader(),
              )),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'It\s Easier now.'.toUpperCase(),
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(0x30, 0x30, 0x30, 1),
                  fontFamily: 'Cera',
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.none,
                  height: 0.7,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 20),
              child: Text(
                'Search how specific you need!\n\nAccording to availability, location or wish? ',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromRGBO(0x30, 0x30, 0x30, 1),
                  fontFamily: 'Cera',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                  height: 0.7,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: ColoredBox(
                color: Color.fromRGBO(245, 245, 245, 1),
                child: Container(
                  width: double.infinity,
                  child: ProductIcons(),
                ),
              )),
          Expanded(
            flex: 4,
            child: Container(
              child: ProductGallery(),
            ),
          ),
        ],
      ),
    );
  }
}
