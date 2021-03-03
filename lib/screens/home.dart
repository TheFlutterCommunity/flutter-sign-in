import 'package:flutter/material.dart';
import 'package:flutter_sign_in/routes/routes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange.shade200, Colors.orange.shade800],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 170)),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'd',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'ev',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'rnz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38),
              child: Text(
                'devrnz designs',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 70)),
            GestureDetector(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Center(
                  child: Text(
                    'Login ',
                    style: TextStyle(fontSize: 18, color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, SIGN_IN);
              },
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            GestureDetector(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    'Register Now ',
                    style: TextStyle(fontSize: 18, color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, SIGN_UP);
              },
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            TextButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, "/SignUp");
                },
                child: Text(
                  'Quick login with Touch ID',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
            Padding(padding: EdgeInsets.only(top: 20)),
            Icon(
              Icons.fingerprint,
              size: 100,
              color: Colors.white,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              'Use Touch ID',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
