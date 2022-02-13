import 'package:copy/Components/acc_check.dart';
import 'package:copy/Components/round_input_field.dart';
import 'package:copy/Components/round_pwd_field.dart';
import 'package:copy/Components/roundbutton.dart';
import 'package:copy/Screens/SignUp/background_singup.dart';
import 'package:flutter/material.dart';

import '../Login/login_screen.dart';

class BodySign extends StatelessWidget {
  final Widget child;

  const BodySign({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundSIgn(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RoundInputField(hintText: "Your Email", onChanged: (value) {}),
        RoundedPasswordField(onChanged: (value) {}),
        RoundButton(text: "SIGN UP", press: () {}),
        SizedBox(
          height: size.height * 0.03,
        ),
        HaveAccCheck(
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
        )
      ],
    ));
  }
}
