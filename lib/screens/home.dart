import 'package:flutter/material.dart';

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
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange.shade300, Colors.orange.shade800],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 170)),
            Container(
              child: Text(
                'devrnz',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                '               devrnz designs',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 80)),
            GestureDetector(
              child: Container(
                height: 40,
                width: 365,
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Login ',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/SignIn");
              },
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            GestureDetector(
              child: Container(
                height: 40,
                width: 365,
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Register Now ',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/SignUp");
              },
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            FlatButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, "/SignUp");
                },
                child: Text(
                  'Quick login with Touch ID',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
            Padding(padding: EdgeInsets.only(top: 30)),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
