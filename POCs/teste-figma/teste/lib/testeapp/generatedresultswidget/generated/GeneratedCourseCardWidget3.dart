import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedresultswidget/generated/GeneratedCourseImageWidget3.dart';
import 'package:flutterapp/testeapp/generatedresultswidget/generated/GeneratedTextContentWidget12.dart';

/* Instance Course Card
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCourseCardWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.0,
      height: 297.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: Color.fromARGB(255, 190, 186, 179),
        ),
      ),
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
              height: 194.0,
              child: GeneratedCourseImageWidget3(),
            ),
            Positioned(
              left: 0.0,
              top: 194.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 103.0,
              child: GeneratedTextContentWidget12(),
            )
          ]),
    );
  }
}
