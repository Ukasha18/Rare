import 'dart:ui';
import 'package:Rare/animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
final _borderRadius = BorderRadius.circular(20);

// ignore: camel_case_types
class Signup_glassBox extends StatelessWidget {
  const Signup_glassBox({ key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: _borderRadius,
        child: Container(
            width: 350,
            height: 450,
            child: Stack(
                children: [
                  //blur effect
                  BackdropFilter(filter: ImageFilter.blur(
                    sigmaX: 15,
                    sigmaY: 15,
                  ),
                    child: Container(),
                  ),SingleChildScrollView(child:
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.2)),
                      borderRadius: _borderRadius,
                      gradient: LinearGradient(begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.grey.withOpacity(0.4),
                          Colors.grey.withOpacity(0.1),
                        ],
                      ),
                    ),
                  ),
                  ),
                  //child
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            FadeAnimation(1, Text("Sign Up", style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),)),
                            SizedBox(height: 20,),
                            FadeAnimation(1.2,
                                Text("Create Your Account, Its Free", style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: Colors.white
                                ),)),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: SingleChildScrollView(child:
                          Column(
                            children: <Widget>[
                              FadeAnimation(1.2, makeEmail(label: "")),
                              FadeAnimation(1.3, makePassword(label: "", obscureText: true)),
                              FadeAnimation(1.4, makeConfirmPassword(label: "", obscureText: true)),
                            ],
                          ),
                          ),
                        ),
                        FadeAnimation(1.4, Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
                            padding: EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                )
                            ),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {},
                              color: Colors.black,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text("Login", style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,color: Colors.white
                              ),),
                            ),
                          ),
                        )),
                        FadeAnimation(1.5, Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Already Have Account! ",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 18,
                                color: Colors.white
                            ),),
                            Text("Login", style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 18,
                              color: Colors.white
                            ),),
                          ],
                        ))
                      ],
                    ),
                  ),

                ]
            )
        )
    );
  }

  Widget makeEmail({label, obscureText = false}) {
    return Column(
      children: <Widget>[
        Text(label, style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white
        ),),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            labelText: 'Email',
            labelStyle: GoogleFonts.poppins(color: Colors.white),
          ),
        ),

      ],
    );
  }
}
Widget makePassword({label, obscureText = false}) {
  return SingleChildScrollView( child:
  Column(
    children: <Widget>[
      Text(label, style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.white
      ),),

      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          labelText: 'Password',
          labelStyle: GoogleFonts.poppins(color: Colors.white),
        ),
      ),

    ],
  ),
  );
}
Widget makeConfirmPassword({label, obscureText = false}) {
  return SingleChildScrollView( child:
  Column(
    children: <Widget>[
      Text(label, style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.white
      ),),

      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          labelText: 'Confirm Password',
          labelStyle: GoogleFonts.poppins(color: Colors.white),
        ),
      ),

    ],
  ),
  );
}

