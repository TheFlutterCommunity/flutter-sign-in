import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sign_in/routes/routes.dart';
//import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigate() {
    Navigator.pushReplacementNamed(context, HOME);
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigate);
  }

  @override
  void initState() {
    super.initState();
    this.startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 60, bottom: 40)),
          Center(
            child: Text(
              'Hello there!',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 150)),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
