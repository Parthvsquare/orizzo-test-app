import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/ui/cart_product_component/cart_product_card.dart';
import 'package:orizzo/ui/checkout_page/checkout_page.dart';
import 'package:orizzo/util/header_nav.dart';
import 'package:orizzo/util/next_button.dart';

class CartPageScreen extends StatefulWidget {
  const CartPageScreen({Key? key}) : super(key: key);

  @override
  _CartPageScreenState createState() => _CartPageScreenState();
}

class _CartPageScreenState extends State<CartPageScreen> {
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'My Cart',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            child: CartProductCard(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            child: CartProductCard(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            child: CartProductCard(),
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
          Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutPage(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(right: 120, left: 120, top: 50),
                  child: NextButton('Checkout'),
                ),
              ))
        ],
      ),
    );
  }
}
