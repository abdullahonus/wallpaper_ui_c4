// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:async';
import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;
  Detay({Key? key, this.imgPath}) : super(key: key);
  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  verify() {
    setState(() {
      _isLoading = true;
    });
    const oneSec = Duration(milliseconds: 1000);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          _isLoading = false;
          _isVerified = true;
        });
      },
    );
  }

  late Timer _timer;
  int _start = 10;
  bool _isLoading = false;

  bool _isVerified = false;

  String _code = '';

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Hero(
        tag: widget.imgPath,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(widget.imgPath),
            fit: BoxFit.cover,
          )),
        ),
      ),
      Container(
        width: sizeWidth * 1,
        height: sizeHeight * 1,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.1),
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.8),
            Colors.black
          ],
        )),
      ),
      const Positioned(
          left: 15,
          bottom: 200,
          child: Text(
            "Wall On Hand",
            style: TextStyle(
                color: Color(0xffFF8A00),
                fontFamily: "mont",
                fontSize: 30,
                fontWeight: FontWeight.w900),
          )),
      const Positioned(
          left: 15,
          right: 15,
          bottom: 120,
          child: Text(
            "lorem ipsum dolor sit amet,consectetur adipiscing elit.Nolla fermentum som a vehicula iaculis.Donec a risus nec arcu placerat tempus.",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "mont",
                fontSize: 15,
                fontWeight: FontWeight.w600),
          )),
      Positioned(
        bottom: 50,
        left: 15,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                primary: const Color(0xffFF8A00),
                fixedSize: const Size(180, 50)),
            onPressed: _code.length == 1
                ? null
                : () {
                    verify();
                  },
            child: _isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      strokeWidth: 3,
                      color: Colors.white,
                    ),
                  )
                : _isVerified
                    ? const Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Text(
                        "Download",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "mont",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
      ),
      Positioned(
          bottom: 50,
          right: 15,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(80),
                border: Border.all(
                  color: const Color(0xffFF8A00),
                  width: 2,
                )),
            child: const Icon(
              Icons.share,
              size: 25,
              color: Color(0xffFF8A00),
            ),
          )),
      Positioned(
          bottom: 50,
          right: 80,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(80),
                border: Border.all(
                  color: const Color(0xffFF8A00),
                  width: 2,
                )),
            child: const Icon(
              Icons.favorite,
              size: 25,
              color: Color(0xffFF8A00),
            ),
          ))
    ]));
  }
}
