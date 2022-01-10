// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallpaper_ui_c4/Screens/main_screen.dart';
import 'package:wallpaper_ui_c4/Screens/sigin.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              width: sizeWidth * 1,
              height: sizeHeight * 1,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/wp.png"), fit: BoxFit.cover)),
            ),
            Container(
              width: sizeWidth * 1,
              height: sizeHeight * 1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff233E50).withOpacity(0),
                  Color(0xff233E50).withOpacity(0.2),
                  Color(0xff233E50).withOpacity(0.2),
                  Color(0xff233E50).withOpacity(0.3),
                  Color(0xff233E50),
                  Color(0xff233E50),
                  Color(0xff233E50),
                ],
              )),
            ),
            const Positioned(
                left: 130,
                top: 100,
                child: Center(
                  child: Text("Sign Up",
                      style: TextStyle(
                          fontFamily: "mont",
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )),
            const Positioned(
                left: 60,
                top: 150,
                child: Center(
                  child: Text("Lorem ipsum dolar sit amet",
                      style: TextStyle(
                          fontFamily: "mont",
                          fontSize: 20,
                          color: Color(0xffFF8A00),
                          fontWeight: FontWeight.bold)),
                )),
            Positioned(
                left: 20,
                right: 20,
                bottom: 80,
                child: Container(
                  width: sizeWidth * 0.7,
                  height: sizeHeight * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 30),
                        child: TextFormField(
                          cursorColor: Color(0xffFF8A00),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person_sharp,
                              color: Color(0xffFF8A00),
                            ),
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(
                                  0.5,
                                ),
                                fontFamily: "mont",
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                            hintText: 'Countrol4',
                            labelText: "Full Name",
                            filled: true,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffFF8A00),
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 30),
                        child: TextFormField(
                          cursorColor: Color(0xffFF8A00),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.mobile_friendly,
                              color: Color(0xffFF8A00),
                            ),
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(
                                  0.5,
                                ),
                                fontFamily: "mont",
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                            hintText: 'xxx xxxx xx xx',
                            labelText: "Mobile Number",
                            filled: true,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffFF8A00),
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 30),
                        child: TextFormField(
                          cursorColor: Color(0xffFF8A00),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.mail,
                              color: Color(0xffFF8A00),
                            ),
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(
                                  0.5,
                                ),
                                fontFamily: "mont",
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                            hintText: 'countrolfouroffical@gmail.com',
                            labelText: "Email",
                            filled: true,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffFF8A00),
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 30),
                        child: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          cursorColor: const Color(0xffFF8A00),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color(0xffFF8A00),
                            ),
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(
                                  0.5,
                                ),
                                fontFamily: "mont",
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                            hintText: '********',
                            labelText: "Password",
                            filled: true,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffFF8A00),
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 30),
                        child: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          cursorColor: const Color(0xffFF8A00),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock_open,
                              color: Color(0xffFF8A00),
                            ),
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(
                                  0.5,
                                ),
                                fontFamily: "mont",
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                            hintText: '********',
                            labelText: "Confirm Password",
                            filled: true,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffFF8A00),
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
              bottom: 70,
              left: 60,
              right: 60,
              child: Container(
                height: sizeHeight * 0.07,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFF8A00),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text("SignIn",
                        style: TextStyle(
                            fontFamily: "mont",
                            fontSize: 20,
                            fontWeight: FontWeight.w600))),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 65,
                right: 0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Text("Don't have an account? ",
                          style: TextStyle(
                              fontFamily: "mont",
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white.withOpacity(0.9))),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ));
                      },
                      child: const Text("Sign Up",
                          style: TextStyle(
                            fontFamily: "mont",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFF8A00),
                          )),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
