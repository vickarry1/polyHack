import 'package:flutter/material.dart';


class BackgroundSIgn extends StatelessWidget {
  final Widget child;
  const BackgroundSIgn({
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
              top: 45,
              child: Image.asset("assets/images/pixelSmileHeart.gif"),
              width: size.width * 0.75),
          child,
        ],
      ),
    );
  }
}
