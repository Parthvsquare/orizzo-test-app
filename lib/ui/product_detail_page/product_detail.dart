import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/ui/cart_product_component/cart_product_card.dart';
import 'package:orizzo/ui/product_detail_component/select_product_options.dart';
import 'package:orizzo/util/header_nav.dart';
import 'package:orizzo/util/next_button.dart';

// ignore: must_be_immutable
class ProductDetail extends StatelessWidget {
  // const ProductDetail({Key? key}) : super(key: key);
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
          // Padding(padding: EdgeInsets.all(20), child: ,),
          Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
            height: height / 2.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/placeholder-01.jpg'),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                Positioned(
                  bottom: 0.0,
                  left: width / 2.5,
                  child: Container(
                    // margin: EdgeInsets.only(left: width / 2.5),
                    // height: 50,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: PrimaryAssentColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      // borderRadius: BorderRadius.circular(13),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: PrimaryAssentColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Chicken Biryani',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(
                          'qr 14'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 18,
                            color: PrimaryAssentColor,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          'qr 14'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 18,
                              color: PrimaryColor,
                              decoration: TextDecoration.lineThrough),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Text(
              lorem(paragraphs: 1, words: 35),
              style: TextStyle(fontSize: 12),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 20),
            child: ProductSize("Select Size:"),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 20),
            child: ProductSize("Select Spice:"),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 20),
            child: ProductSize("Select Flavour:"),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: height / 9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                child: CartIncrementCard(),
              ),
              Container(
                padding: EdgeInsets.only(right: 30),
                child: NextButton("Add to Cart"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
