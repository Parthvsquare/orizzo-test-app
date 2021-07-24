import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/ui/order_placed/order_placed_page.dart';
import 'package:orizzo/ui/resturant_menu_component/product_menu_card.dart';
import 'package:orizzo/util/header_nav.dart';
import 'package:orizzo/util/next_button.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Checkout'.toUpperCase(),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ProductMenuCard(),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 250),
                  child: Divider(height: 12, color: PrimaryAssentColor),
                ),
                Container(
                  child: Text(
                    'Charges: 42 QR',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  child: Text(
                    'Discount: 4 QR',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  child: Text(
                    'Total Charges: 38 QR',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text('Deliver to'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 150, right: 150),
                  child: Divider(height: 12, color: PrimaryAssentColor),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Tap to select your location',
                          style: TextStyle(
                              color: PrimaryAssentColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_circle_down,
                          color: PrimaryAssentColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: height / 8),
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderPlaced(),
                    ),
                  );
                },
                child: NextButton('Place order'),
              )))
        ],
      ),
    );
  }
}
