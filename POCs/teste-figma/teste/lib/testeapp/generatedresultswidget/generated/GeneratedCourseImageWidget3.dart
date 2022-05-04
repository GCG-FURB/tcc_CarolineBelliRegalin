import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedresultswidget/generated/GeneratedPriceWidget6.dart';
import 'package:flutterapp/testeapp/generatedresultswidget/generated/GeneratedCoolKidsAloneTimeWidget1.dart';

/* Frame Course Image
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCourseImageWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.0,
      height: 194.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomRight: Radius.circular(0.0),
          bottomLeft: Radius.circular(0.0),
        ),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomRight: Radius.circular(0.0),
                bottomLeft: Radius.circular(0.0),
              ),
              child: Container(
                color: Color.fromARGB(255, 247, 242, 238),
              ),
            ),
            Positioned(
              left: 0.0,
              top: 16.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 138.0,
              child: GeneratedCoolKidsAloneTimeWidget1(),
            ),
            Positioned(
              left: 0.0,
              top: 154.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 40.0,
              child: GeneratedPriceWidget6(),
            )
          ]),
    );
  }
}
