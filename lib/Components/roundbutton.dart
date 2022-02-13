import 'package:flutter/material.dart';

import '../constants.dart';


class RoundButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: ElevatedButton(
            onPressed: () => press(),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              primary: kPrimaryColor,
            ),
            child: Text(text, style: TextStyle(color: textColor))),
      ),
    );
  }
}
