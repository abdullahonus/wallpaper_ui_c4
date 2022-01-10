import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.search,
                color: Color(0xffFF8A00),
                size: 35,
              ),
            )
          ],
          backgroundColor: Color(0xff233E50),
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.app_registration_outlined,
              size: 35,
              color: Color(0xffFF8A00),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: Color(0xff233E50)),
            ),
            const Positioned(
                left: 25,
                top: 30,
                child: Text(
                  "Today's",
                  style: TextStyle(
                      fontFamily: "mont",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35),
                )),
            const Positioned(
                left: 25,
                top: 75,
                child: Text(
                  "best picks",
                  style: TextStyle(
                      fontFamily: "mont",
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFF8A00),
                      fontSize: 30),
                )),
            Positioned(
              left: 25,
              right: 25,
              top: 130,
              child: Column(children: [
                SizedBox(
                  width: 340,
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "2.jpg",
                                  ),
                                  fit: BoxFit.cover))),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      "3.jpg",
                                    ),
                                    fit: BoxFit.cover))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      "4.jpg",
                                    ),
                                    fit: BoxFit.cover))),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            const Positioned(
                top: 300,
                left: 25,
                child: Text(
                  "Trending",
                  style: TextStyle(
                      color: Color(0xffFF8A00),
                      fontSize: 25,
                      fontFamily: "mont",
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
              left: 25,
              right: 25,
              bottom: 40,
              child: SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    Positioned(
                        left: 15,
                        top: 10,
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("3.jpg"), fit: BoxFit.cover),
                          ),
                        )),
                    Positioned(
                        right: 15,
                        top: 15,
                        child: Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("5.jpg"), fit: BoxFit.cover),
                          ),
                        )),
                    const Positioned(
                        right: 20,
                        top: 20,
                        child: Icon(
                          Icons.star_rate_rounded,
                          color: Colors.white,
                        )),
                    Positioned(
                        right: 15,
                        top: 150,
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("4.jpg"), fit: BoxFit.cover),
                          ),
                        )),
                    Positioned(
                        left: 15,
                        bottom: 5,
                        child: Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("7.jpg"), fit: BoxFit.cover),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 60,
              right: 60,
              child: Container(
                  height: sizeHeight * 0.07,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffFF8A00),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.home,
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 55.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  )),
            ),
            Positioned(
                left: 170,
                bottom: 65,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffFF8A00),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
