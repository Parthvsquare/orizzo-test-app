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
    return MaterialApp(
      home: Container(
        height: 100,
        child: new TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: new BorderSide(color: PrimaryAssentColor),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: PrimaryAssentColor),
              borderRadius: BorderRadius.circular(20),
            ),
            labelText: "Enter Registered Mail",
            labelStyle: TextStyle(
              fontSize: 16,
              color: PrimaryColor,
              fontFamily: 'Cera',
            ),
            suffixIcon: Icon(Icons.mail_outline),
            suffixStyle: TextStyle(
              color: PrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
