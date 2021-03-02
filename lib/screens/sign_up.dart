import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(' Back'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              Container(
                height: 230,
                width: 450,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 80)),
                    Text(
                      'devrnz',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '               devrnz designs',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 500,
                width: 450,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: EdgeInsets.only(right: 320),
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
                        hintText: 'frank',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      child: Text(
                        'Email id',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: EdgeInsets.only(right: 325),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter Email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'frankrnz@gmail.com',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: EdgeInsets.only(right: 320),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter Password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: '*************',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    GestureDetector(
                      child: Container(
                        height: 50,
                        width: 420,
                        child: Center(
                            child: Text(
                          'Register Now',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.orangeAccent, Colors.orange],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight)),
                      ),
                      onTap: () {},
                    ),
                    Padding(padding: EdgeInsets.only(top: 45)),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 85)),
                        Text(
                          "Already have an account ?",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, "/SignIn");
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
            ],
          ),
        ),
      ),
    );
  }
}
