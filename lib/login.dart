import 'package:flutter/material.dart';
import 'package:Rare/animation/FadeAnimation.dart';

import 'glass_box.dart';



class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/sginup.png'),
              fit: BoxFit.cover)
      ),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            // Expanded(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Column(
            //         children: <Widget>[
            //           FadeAnimation(1, Text("Login", style: TextStyle(
            //             fontSize: 30,
            //             fontWeight: FontWeight.bold
            //           ),)),
            //           SizedBox(height: 20,),
            //           FadeAnimation(1.2, Text("Login to your account", style: TextStyle(
            //             fontSize: 15,
            //             color: Colors.grey[700]
            //           ),)),
            //         ],
            //       ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 40),
                  //   child: Column(
                  //     children: <Widget>[
                  //       FadeAnimation(1.2, makeInput(label: "Email")),
                  //       FadeAnimation(1.3, makeInput(label: "Password", obscureText: true)),
                  //     ],
                  //   ),
                  // ),
                  // FadeAnimation(1.4, Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 40),
                  //   child: Container(
                  //     padding: EdgeInsets.only(top: 3, left: 3),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(50),
                  //       border: Border(
                  //         bottom: BorderSide(color: Colors.black),
                  //         top: BorderSide(color: Colors.black),
                  //         left: BorderSide(color: Colors.black),
                  //         right: BorderSide(color: Colors.black),
                  //       )
                  //     ),
                  //     child: MaterialButton(
                  //       minWidth: double.infinity,
                  //       height: 60,
                  //       onPressed: () {},
                  //       color: Colors.black,
                  //       elevation: 0,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(50)
                  //       ),
                  //       child: Text("Login", style: TextStyle(
                  //         fontWeight: FontWeight.w600,
                  //         fontSize: 18,color: Colors.white
                  //       ),),
                  //     ),
                  //   ),
                  // )),
            //       FadeAnimation(1.5, Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: <Widget>[
            //           Text("Don't have an account?"),
            //           Text("Sign up", style: TextStyle(
            //             fontWeight: FontWeight.w600, fontSize: 18
            //           ),),
            //         ],
            //       ))
            //     ],
            //   ),
            // ),

            Image(image: AssetImage('assets/logo.png'),width: 400,
            height: 250,),

            FadeAnimation(1.2,
                Container(
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(''),

                )
              ),
              child:
              Center(
                child: GlassBox(),
              ),
            ))
          ],
        ),
      ),
    );
  }

  // Widget makeInput({label, obscureText = false}) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Text(label, style: TextStyle(
  //         fontSize: 15,
  //         fontWeight: FontWeight.w400,
  //         color: Colors.black87
  //       ),),
  //       SizedBox(height: 5,),
  //       TextField(
  //         obscureText: obscureText,
  //         decoration: InputDecoration(
  //           contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
  //           enabledBorder: OutlineInputBorder(
  //             borderSide: BorderSide(color: Colors.grey[400])
  //           ),
  //           border: OutlineInputBorder(
  //             borderSide: BorderSide(color: Colors.grey[400])
  //           ),
  //         ),
  //       ),
  //       SizedBox(height: 30,),
  //     ],
  //   );
  // }
}
