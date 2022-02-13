import 'package:copy/Screens/Home/homescreen.dart';
import 'package:copy/Screens/Home/triangle.dart';
import 'package:copy/Screens/Login/body.dart';
import 'package:flutter/material.dart';
import 'package:copy/constants.dart';
import '../../Components/acc_check.dart';
import '../../Components/round_input_field.dart';
import '../../Components/round_pwd_field.dart';
import '../../Components/roundbutton.dart';
import '../SignUp/signup_screen.dart';

class loginHeart extends StatelessWidget {
  const loginHeart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Body(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RoundInputField(hintText: "Your Email", onChanged: (value) {}),
        RoundedPasswordField(onChanged: (value) {}),
        RoundButton(text: "LOGIN", press: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ExampleExpandableFab();
              },
            ),
          );
        }),
        SizedBox(
          height: size.height * 0.03,
        ),
        HaveAccCheck(press: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SignUp();
              },
            ),
          );
        })
      ],
    ));
  }
}
