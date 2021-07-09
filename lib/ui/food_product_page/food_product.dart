import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orizzo/ui/resturant_menu/resturant_menu_page.dart';
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
        appBar: AppBar(
          automaticallyImplyLeading: false, // simple as that!
          title: Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 30.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 80,
                  child: Image.asset(
                    'assets/logo-landscape.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/addtocart-01.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/menu-01.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResturantMenu()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 20, left: 20),
                        child: ProductCard(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
