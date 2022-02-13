import 'package:flutter/material.dart';
import 'package:copy/Screens/Login/background.dart';

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: loginHeart());
  }
}
