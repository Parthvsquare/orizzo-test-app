import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:orizzo/ui/book_table_component/book_table_slider.dart';
import 'package:orizzo/ui/book_table_component/book_table_time.dart';
import 'package:orizzo/ui/confirm_book_table/confirm_book_table.dart';
import 'package:orizzo/util/header_nav.dart';
import 'package:orizzo/util/next_button.dart';

class BookTable extends StatefulWidget {
  const BookTable({Key? key}) : super(key: key);

  @override
  _BookTableState createState() => _BookTableState();
}

class _BookTableState extends State<BookTable> {
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              child: BookTableImages(),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              width: double.infinity,
              child: Text(
                'Select No of person'.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 30, bottom: 30),
              width: double.infinity,
              child: Text(
                'Select date & time'.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookTableTime('4.00 pm'),
                          BookTableTime('4.00 pm'),
                          BookTableTime('4.00 pm'),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BookTableTime('4.00 pm'),
                          BookTableTime('4.00 pm'),
                          BookTableTime('4.00 pm'),
                        ],
                      ),
                    )
                  ],
                )

                //BookTableTime('this'),
                ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              width: double.infinity,
              child: Text(
                'Description'.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              width: double.infinity,
              child: Text(
                lorem(paragraphs: 1, words: 20),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
                margin: EdgeInsets.only(bottom: 30, left: 80, right: 80),
                width: double.infinity,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmBookTable(),
                      ),
                    );
                  },
                  child: NextButton('Book a table now'),
                )),
          )
        ],
      ),
    );
  }
}
