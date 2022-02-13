import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key? key, required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 100,
              child: Image.asset("assets/images/pixelHeart.gif"),
              width: size.width * 0.5),
          child,
        ],
      ),

    );
  }
}
