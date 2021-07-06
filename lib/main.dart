import 'package:flutter/material.dart';
// import 'const.dart';
import 'package:orizzo/ui/splash_page/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      theme: new ThemeData(fontFamily: 'Cera'),
      home: Material(
        child: SplashScreen(),
      ),
    );
  }
}
