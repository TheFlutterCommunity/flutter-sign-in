import 'package:flutter/material.dart';
import 'package:flutter_splash_signin/screens/dashboard.dart';
import 'package:flutter_splash_signin/screens/home.dart';
import 'package:flutter_splash_signin/screens/sign_in.dart';
import 'package:flutter_splash_signin/screens/sign_up.dart';

import 'screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Home(),
      routes: <String, WidgetBuilder>{
        "/SignIn": (BuildContext context) => SignIn(),
        "/SignUp": (BuildContext context) => SignUp(),
        "/Dashboard": (BuildContext context) => Dashboard(),
        "/Home": (BuildContext context) => Home(),
      },
    );
  }
}
