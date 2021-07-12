import 'package:flutter/material.dart';

class BookTableImages extends StatefulWidget {
  const BookTableImages({Key? key}) : super(key: key);

  @override
  _BookTableImagesState createState() => _BookTableImagesState();
}

class _BookTableImagesState extends State<BookTableImages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        width: 50,
        height: 100,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/placeholder-01.jpg'),
              fit: BoxFit.fitWidth,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
