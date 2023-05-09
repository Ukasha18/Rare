import 'package:flutter/material.dart';
import 'package:Rare/animation/FadeAnimation.dart';
import 'package:Rare/login.dart';
import 'package:Rare/signup.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    )
  );
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SignupPage(),
    );
  }
}