import 'package:flutter/material.dart';
import 'statussleeping.dart';
import 'statuswalkinginrain.dart';
import 'statusstudying.dart';
import 'statusshowing.dart';
import 'triangle.dart';

class statussleeping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Text('Babe is going to sleep',
            style: TextStyle(color: Color(0xFFF2BFBB))),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Container(

        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/goingtosleep.gif"),
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
              heroTag: 'sleeping',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => statussleeping()));
              },
              child: const Icon(
                Icons.bed_rounded,
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
                Icons.book,
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
                    context, MaterialPageRoute(builder: (_) => statusshowing()));
              },
              child: const Icon(
                Icons.shower,
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
                    context, MaterialPageRoute(builder: (_) => statuswalkinginrain()));
              },
              child: const Icon(
                Icons.directions_walk,
                size: 40,
              ),
              backgroundColor: Color(0xFFF2BFAB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.03,
            top: size.width * 0.23,
            child: FloatingActionButton(
              heroTag: 'home',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ExampleExpandableFab()));
              },
              child: const Icon(
                Icons.home,
                size: 30,
                color: Color(0xFFF2BFAB),
              ),
              backgroundColor: Colors.white,
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