import 'package:flutter/material.dart';
import 'package:flutter_sign_in/routes/routes.dart';
import 'package:flutter_sign_in/widgets/curve_painter.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomPaint(
            child: Container(
              height: 150.0,
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
                        'Login',
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
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          ' Forgot Password ?',
                          style: TextStyle(
                              fontSize: 12, color: Colors.black87.withOpacity(0.7), fontWeight: FontWeight.w700),
                        )),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.grey[400],
                            thickness: 2,
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text('or'),
                      ),
                      SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.grey[400],
                            thickness: 2,
                          )),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  GestureDetector(
                    child: Container(
                      height: 40,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade700.withOpacity(0.9), borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade900.withOpacity(0.6),
                                borderRadius:
                                    BorderRadius.only(topLeft: Radius.circular(4), bottomLeft: Radius.circular(4))),
                            child: Center(
                              child: Text(
                                'f',
                                style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 36),
                            child: Center(
                              child: Text(
                                'Login with Facebook',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                    wordSpacing: 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  Padding(padding: EdgeInsets.only(top: 35)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87.withOpacity(0.7).withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            _navigateToSignUp(context);
                          },
                          child: Text(
                            'Register',
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

  void _navigateToSignUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, SIGN_UP);
  }
}
