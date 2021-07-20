import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/ui/book_table_page/book_table.dart';
import 'package:orizzo/ui/product_detail_page/product_detail.dart';
import 'package:orizzo/ui/resturant_menu_component/product_menu_card.dart';
import 'package:orizzo/util/header_nav.dart';
import 'package:orizzo/util/next_button.dart';
import 'package:orizzo/util/product_card.dart';

class ResturantMenu extends StatefulWidget {
  const ResturantMenu({Key? key}) : super(key: key);

  @override
  _ResturantMenuState createState() => _ResturantMenuState();
}

class _ResturantMenuState extends State<ResturantMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // simple as that!
        title: HeaderNavigation(),
        actions: [
          HeaderActionNav(),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 0,
            child: Container(
              width: double.infinity,
              // height: 300,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: ProductCard(),
            ),
          ),
          Expanded(
            flex: 0,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookTable()),
                    );
                  },
                  child: Container(
                    width: 250,
                    child: NextButton("Book a table now"),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Currently Table Booking is not available, ",
                          style: TextStyle(
                            fontSize: 12,
                            color: PrimaryColor,
                            fontWeight: FontWeight.w200,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "as instructed by the Local Administration",
                          style: TextStyle(
                            fontSize: 12,
                            color: PrimaryColor,
                            fontWeight: FontWeight.w200,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                          margin:
                              const EdgeInsets.only(left: 33.0, right: 14.0),
                          child: Divider(
                            color: PrimaryAssentColor,
                            height: 50,
                          ),
                        ),
                      ),
                      Text(
                        "Food order & delivery".toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.none,
                          fontFamily: 'Cera',
                        ),
                      ),
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 14.0, right: 33.0),
                            child: Divider(
                              color: PrimaryAssentColor,
                              height: 50,
                            )),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Complete Menu'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 14,
                            color: PrimaryAssentColor,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            fontFamily: 'Cera',
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Select Category'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            fontFamily: 'Cera',
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetail()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: ProductMenuCard(),
                  ),
                )

                // Container(
                //   child: ProductMenuCard(),
                // ),
                // Container(
                //   child: ProductMenuCard(),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
