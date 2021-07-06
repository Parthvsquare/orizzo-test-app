import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orizzo/util/header_nav.dart';
import 'package:orizzo/ui/food_product_component/address_bar.dart';
import 'package:orizzo/ui/food_product_component/search_bar.dart';

class FoodProduct extends StatefulWidget {
  const FoodProduct({Key? key}) : super(key: key);

  @override
  _FoodProductState createState() => _FoodProductState();
}

class _FoodProductState extends State<FoodProduct> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 100,
              child: HeaderNavigation(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    AddressBar(),
                    SearchBar(),
                  ],
                )),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              // height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
