// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:einnovention_mobile/views/SplashScreen/splash_screen.dart';
import 'package:einnovention_mobile/widgets/const.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Einnovention Mobile',
      theme: ThemeData(
        primarySwatch: appThemeColor,
      ),
      home: SplashScreen(),
    );
  }
}
