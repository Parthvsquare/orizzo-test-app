import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orizzo/resources/const.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new TextFormField(
          textAlign: TextAlign.start,
          // textAlignVertical: TextAlignVertical.bottom,
          // scrollPadding: EdgeInsets.only(bottom: 2),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15.0),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: PrimaryColor),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: PrimaryColor),
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(20),
            ),
            // hintText: "Search for Restaaurant".toUpperCase(),
            hintText: "Search for restaurant".toUpperCase(),
            hintStyle: TextStyle(
              fontSize: 16,
              color: PrimaryColor,
              fontFamily: 'Cera',
              fontWeight: FontWeight.w900,
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 50),
              child: Icon(Icons.search_rounded),
            ),
            // prefixStyle: Color.black
          ),
          // controller: ,
        ),
      ],
    );
  }
}
