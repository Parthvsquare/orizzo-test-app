import 'package:flutter/material.dart';
import 'const.dart';

void main() => runApp(splashScreen());

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cera'),
      home: Scaffold(
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
      ),
    );
  }
}
