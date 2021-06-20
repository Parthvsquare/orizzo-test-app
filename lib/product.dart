import 'package:flutter/material.dart';
import 'const.dart';

import './product_components/product_header.dart';
import './product_components/product_icons.dart';
import './product_components/product_gallery.dart';

class productPage extends StatelessWidget {
  const productPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductHeader(),
        Container(
          child: Text('It\s Easier now'),
        ),
        Container(
          child: Text('Search how specific you need! '),
        ),
        Container(
          child: Text('According to availability, location or wish?'),
        ),
        ProductIcons(),
        ProductGallery(),
      ],
    );
  }
}
