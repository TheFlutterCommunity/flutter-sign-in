import 'package:flutter/material.dart';
import 'package:flutter_sign_in/routes/routes.dart';
import 'package:flutter_sign_in/screens/dashboard.dart';
import 'package:flutter_sign_in/screens/home.dart';
import 'package:flutter_sign_in/screens/sign_in.dart';
import 'package:flutter_sign_in/screens/sign_up.dart';

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
        SIGN_IN: (BuildContext context) => SignIn(),
        SIGN_UP: (BuildContext context) => SignUp(),
        DASHBOARD: (BuildContext context) => Dashboard(),
        HOME: (BuildContext context) => Home(),
      },
    );
  }
}
