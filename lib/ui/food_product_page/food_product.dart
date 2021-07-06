import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orizzo/util/header_nav.dart';
import 'package:orizzo/ui/food_product_component/address_bar.dart';
import 'package:orizzo/ui/food_product_component/search_bar.dart';
import 'package:orizzo/util/product_card.dart';

class FoodProduct extends StatefulWidget {
  const FoodProduct({Key? key}) : super(key: key);

  @override
  _FoodProductState createState() => _FoodProductState();
}

class _FoodProductState extends State<FoodProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              // padding: EdgeInsets.only(top: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: AddressBar(),
                  ),
                  Container(
                    child: SearchBar(),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "get your favrite now!".toUpperCase(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: 'Cera',
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Container(
                            child: Row(
                          children: [
                            Text(
                              'Sort'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Cera',
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Icon(Icons.sort_rounded),
                            )
                          ],
                        )),
                      ],
                    )
                    // height: 200,
                    ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: ProductCard(),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
