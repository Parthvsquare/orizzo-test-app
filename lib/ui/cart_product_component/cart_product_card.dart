import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';

class CartProductCard extends StatefulWidget {
  const CartProductCard({Key? key}) : super(key: key);

  @override
  _CartProductCardState createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/placeholder-01.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Almond Pistachio Karak",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  child: CartIncrementCard(),
                )
              ],
            ),
          ),
          Container(
            child: Text(
              'Qr 14',
              style: TextStyle(
                color: PrimaryAssentColor,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CartIncrementCard extends StatefulWidget {
  const CartIncrementCard({Key? key}) : super(key: key);

  @override
  _CartIncrementCardState createState() => _CartIncrementCardState();
}

class _CartIncrementCardState extends State<CartIncrementCard> {
  var itemcounter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: PrimaryAssentColor),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                itemcounter--;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 5, left: 15),
              child: Icon(
                Icons.remove,
                color: Colors.black,
                size: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3),
            padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: Colors.white),
            child: Text(
              itemcounter.toString(),
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                itemcounter++;
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 5, right: 15),
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
