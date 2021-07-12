import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';

class BookTableTime extends StatefulWidget {
  final String time;
  BookTableTime(this.time);
  // const BookTableTime({Key? key}) : super(key: key);

  @override
  _BookTableTimeState createState() => _BookTableTimeState();
}

class _BookTableTimeState extends State<BookTableTime> {
  var thetextcolor = Colors.black;
  var thebgcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            thetextcolor = Colors.white;
            thebgcolor = PrimaryAssentColor;
          });
        },
        child: Container(
            height: 45,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: thebgcolor,
                border: Border.all(
                  color: PrimaryAssentColor,
                  width: 2,
                )),
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                widget.time.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            )),
      ),
    );
  }
}
