import 'package:flutter/material.dart';
import 'package:wallpaper_ui_c4/Screens/sigin.dart';
import 'package:wallpaper_ui_c4/Screens/signup.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: sizeWidth * 1,
            height: sizeHeight * 1,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "wp.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          const Positioned(
              left: 40,
              top: 60,
              child: Text(
                "WELCOME",
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: "mont",
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              )),
          const Positioned(
              left: 40,
              top: 120,
              child: Text(
                "Discovery More Beautiful",
                style: TextStyle(
                    fontSize: 23,
                    fontFamily: "mont",
                    color: Color(0xffFF8A00),
                    fontWeight: FontWeight.w600),
              )),
          const Positioned(
              left: 80,
              right: 50,
              bottom: 360,
              child: Text(
                "Are you looking for wallpaper?",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: "mont",
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              )),
          Positioned(
            bottom: 280,
            left: 30,
            right: 30,
            child: Container(
              height: sizeHeight * 0.07,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80))),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignInPage(),
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
            bottom: 200,
            left: 30,
            right: 30,
            child: Container(
              height: sizeHeight * 0.07,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80))),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: const BorderSide(
                        color: Color(0xffFF8A00),
                      )),
                  child: const Text("SignUp",
                      style: TextStyle(
                          fontFamily: "mont",
                          fontSize: 20,
                          fontWeight: FontWeight.w600))),
            ),
          ),
          Positioned(
              bottom: 150,
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
              bottom: 80,
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
    ));
  }
}
