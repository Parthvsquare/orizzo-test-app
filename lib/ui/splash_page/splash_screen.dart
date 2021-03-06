import 'dart:async';
// import 'package:orizzo/ui/info_pages/info_2.dart';

import '../info_page/info.dart';
import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => InfoPart1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            Container(
              height: 108,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo-onwhite.png'),
                  // fit: BoxFit.fill,
                ),
              ),
            ),
            new Text(
              'Loading, please wait',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 19,
                color: PrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
