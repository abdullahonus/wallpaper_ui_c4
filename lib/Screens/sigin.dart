// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallpaper_ui_c4/Screens/home_page.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                left: 140,
                top: 100,
                child: Center(
                  child: Text("Sign In",
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
                left: 15,
                right: 15,
                bottom: 200,
                child: Container(
                  width: sizeWidth * 0.8,
                  height: sizeHeight * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 50),
                        child: TextFormField(
                          cursorColor: Color(0xffFF8A00),
                          decoration: InputDecoration(
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
                           keyboardType: TextInputType.number,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          cursorColor: const Color(0xffFF8A00),
                          decoration: InputDecoration(
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
                      const Padding(
                        padding: EdgeInsets.only(left: 210, top: 20),
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                              color: Color(0xffFF8A00),
                              fontFamily: "mont",
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
              bottom: 180,
              left: 60,
              right: 60,
              child: Container(
                height: sizeHeight * 0.07,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage(),
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
                bottom: 130,
                left: 35,
                right: 0,
                child: Row(
                  children: [
                    Container(
                      height: 2,
                      width: 110,
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.3)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Text("or sign with",
                          style: TextStyle(
                              fontFamily: "mont",
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white.withOpacity(0.5))),
                    ),
                    Container(
                      height: 2,
                      width: 110,
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.3)),
                    ),
                  ],
                )),
            Positioned(
                bottom: 50,
                left: 35,
                right: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                            Text("facebook",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "mont",
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white))
                          ],
                        )),
                    Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffEA4335),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 25,
                              height: 30,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/google.png",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            const Text("Google",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "mont",
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white))
                          ],
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
