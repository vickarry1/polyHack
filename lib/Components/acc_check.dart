import 'package:flutter/material.dart';

import '../constants.dart';

class HaveAccCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const HaveAccCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(login ? "Don't have an Account? " : "Already have an Account? ",
            style:
                TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold)),
        GestureDetector(
          onTap: () => press(),
          child: Text(login ? "Sign Up" : "Sign IN",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              )),
        )
      ],
    );
  }
}
