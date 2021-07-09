import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:orizzo/resources/const.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          // margin: EdgeInsets.only(
          //   top: 50,
          //   bottom: 20,
          //   left: 10,
          // ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/placeholder-01.jpg'),
              fit: BoxFit.fitWidth,
            ),
            border:
                Border.all(width: 4.0, style: BorderStyle.solid), //Border.all
            /*** The BorderRadius widget  is here ***/
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          // child: Image.asset(
          //   'assets/placeholder-01.jpg',
          //   fit: BoxFit.cover,
          // ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text('R.s puram'.toUpperCase()),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: RatingBar.builder(
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20.0,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.3),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text('4.6 (5 Review)'.toLowerCase()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text('R.s puram'.toUpperCase()),
              ),
              Container(
                child: Text('Cafeteria'.toLowerCase()),
              ),
            ],
          ),
        )
      ],
    );
  }
}
