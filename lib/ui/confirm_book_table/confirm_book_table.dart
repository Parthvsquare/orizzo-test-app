import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/ui/book_table_component/book_table_slider.dart';
import 'package:orizzo/util/header_nav.dart';
import 'package:orizzo/util/next_button.dart';

class ConfirmBookTable extends StatefulWidget {
  const ConfirmBookTable({Key? key}) : super(key: key);

  @override
  _ConfirmBookTableState createState() => _ConfirmBookTableState();
}

class _ConfirmBookTableState extends State<ConfirmBookTable> {
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
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              child: BookTableImages(),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Tasty tea',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            'Al sadd, Doha',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.location_on,
                      color: PrimaryAssentColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Persons:',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: PrimaryAssentColor),
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Date & Time:',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      '16/03/2021 : 3:00 PM',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: PrimaryAssentColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                  child: BookTableInputField(
                    hintname: 'Enter Email',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: BookTableInputField(
                    hintname: 'Enter Password',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 70, right: 70),
            width: double.infinity,
            child: NextButton('Confirm and proceed'),
          ))
        ],
      ),
    );
  }
}

class BookTableInputField extends StatefulWidget {
  final String hintname;
  const BookTableInputField({Key? key, required this.hintname})
      : super(key: key);

  @override
  _BookTableInputFieldState createState() => _BookTableInputFieldState();
}

class _BookTableInputFieldState extends State<BookTableInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintname,
          hintStyle:
              TextStyle(fontWeight: FontWeight.bold, color: PrimaryColor),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: PrimaryAssentColor),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: PrimaryAssentColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: PrimaryAssentColor),
          ),
        ),
      ),
    );
  }
}
