import 'package:flutter/material.dart';
import 'statusthinking.dart';
import 'statusstudying.dart';
import 'statuscrying.dart';
import 'statushappy.dart';

class statushappy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/happy.gif"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: size.width * 0.30,
            bottom: 1,
            child: FloatingActionButton(
              heroTag: 'thinking',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => statusthinking()));
              },
              child: const Icon(
                Icons.phone,
                size: 40,
              ),
              backgroundColor: Color(0xFFF2BFAB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            right: size.width * 0.30,
            child: FloatingActionButton(
              heroTag: 'studying',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => statusstudying()));
              },
              child: const Icon(
                Icons.sms,
                size: 40,
              ),
              backgroundColor: Color(0xFFF2BFAB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            right: size.width * 0.80,
            bottom: 1,
            child: FloatingActionButton(
              heroTag: 'happy',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => statushappy()));
              },
              child: const Icon(
                Icons.home,
                size: 40,
              ),
              backgroundColor: Color(0xFFF2BFAB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.80,
            bottom: 1,
            child: FloatingActionButton(
              heroTag: 'crying',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => statuscrying()));
              },
              child: const Icon(
                Icons.check,
                size: 40,
              ),
              backgroundColor: Color(0xFFF2BFAB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          // Add more floating buttons if you want
          // There is no limit
        ],
      ),
    );
  }
}
class FakeItem extends StatelessWidget {
  const FakeItem({
    Key? key,
    required this.isBig,
  }) : super(key: key);

  final bool isBig;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      height: isBig ? 128.0 : 36.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        color: Colors.grey.shade300,
      ),
    );
  }
}