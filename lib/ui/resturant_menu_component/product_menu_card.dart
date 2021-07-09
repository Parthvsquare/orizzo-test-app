import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:orizzo/resources/const.dart';

class ProductMenuCard extends StatefulWidget {
  const ProductMenuCard({Key? key}) : super(key: key);

  @override
  _ProductMenuCardState createState() => _ProductMenuCardState();
}

class _ProductMenuCardState extends State<ProductMenuCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo-landscape.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Expanded(
                        flex: 0,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'Almond-Pistachio Karak',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: PrimaryColor,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Rs. 24',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: PrimaryColor,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Expanded(
                        child: Container(
                          child: Text(
                            lorem(paragraphs: 1, words: 25),
                            style: TextStyle(
                              fontSize: 12,
                              color: PrimaryColor,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
