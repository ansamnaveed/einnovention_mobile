// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:einnovention_mobile/views/HomePage/home_page.dart';
import 'package:einnovention_mobile/widgets/const.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      pushReplacement(
        context,
        HomePage(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image(
              width: MediaQuery.of(context).size.width / 2,
              image: AssetImage(
                'assets/logo/einnovention.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
