import 'package:flutter/material.dart';
import 'package:Rare/animation/FadeAnimation.dart';

import 'Signup_glass_box.dart';



class SignupPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/burj1.png'),
              fit: BoxFit.cover)
      ),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/whitelogo.png'),width: 200,
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
                    child: Signup_glassBox(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
