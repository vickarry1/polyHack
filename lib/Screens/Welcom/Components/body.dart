import 'package:copy/Screens/Welcom/Components/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Components/roundbutton.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';
import '../../SignUp/signup_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // total height and weidth of screen
    return Background(
        child: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Image.asset(
          "assets/images/couple.png",
          width: 400,
          height: 400,
        ),
        Text(
          "WELCOME TO OURHUB",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        RoundButton(
          text: "LOGIN",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return loginScreen();
                },
              ),
            );
          },
        ),
        RoundButton(
          text: "SIGN UP",
          color: kPrimaryLightColor,
          textColor: Colors.white,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUp();
                },
              ),
            );
          },
        )
      ],
    )));
  }
}
