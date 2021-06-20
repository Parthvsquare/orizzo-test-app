import 'package:flutter/material.dart';
import 'const.dart';
import 'other_page/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cera'),
      home: SplashScreen(),
    );
  }
}
