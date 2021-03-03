import 'package:flutter/material.dart';
import 'package:flutter_sign_in/routes/routes.dart';
import 'package:flutter_sign_in/widgets/curve_painter.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            child: Container(
              height: 150,
            ),
            painter: CurvePainter(),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 140),
                    child: Column(
                      children: [
                        Center(
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'd',
                                style: TextStyle(
                                  color: Colors.orangeAccent,
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
                                  color: Colors.orangeAccent,
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
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter Username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)), borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[100],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12)),
                  Text(
                    'Email id',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter Email Id';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Email Id',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)), borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[100],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12)),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)), borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[100],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  GestureDetector(
                    child: Container(
                      height: 40,
                      width: width,
                      alignment: Alignment.center,
                      child: Text(
                        'Register Now',
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                              colors: [Colors.orange.shade300, Colors.orange],
                              begin: Alignment.topLeft,
                              end: Alignment.topRight)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/Dashboard');
                    },
                  ),
                  Padding(padding: EdgeInsets.only(top: 75)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87.withOpacity(0.7).withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            _loginPage(context);
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.orange),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _loginPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, SIGN_IN);
  }
}
