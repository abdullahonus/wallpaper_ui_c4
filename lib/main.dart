import 'package:flutter/material.dart';
import 'package:wallpaper_ui_c4/Screens/detay.dart';
import 'package:wallpaper_ui_c4/Screens/main_screen.dart';
import 'package:wallpaper_ui_c4/abc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Countrol4',
      home: MainScreen(),
    );
  }
}
