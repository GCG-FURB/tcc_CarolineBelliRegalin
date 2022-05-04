import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedresultswidget/generated/GeneratedCourseCardWidget3.dart';
import 'package:flutterapp/testeapp/generatedresultswidget/generated/GeneratedCourseCardWidget2.dart';

/* Frame Cards
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCardsWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.0,
      height: 610.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 297.0,
              child: GeneratedCourseCardWidget2(),
            ),
            Positioned(
              left: 0.0,
              top: 313.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 297.0,
              child: GeneratedCourseCardWidget3(),
            )
          ]),
    );
  }
}
