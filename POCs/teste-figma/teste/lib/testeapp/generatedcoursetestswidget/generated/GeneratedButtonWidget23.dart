import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedcoursetestswidget/generated/GeneratedTextWidget26.dart';

/* Frame Button
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedButtonWidget23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295.0,
      height: 56.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          width: 2.0,
          color: Color.fromARGB(255, 227, 86, 41),
        ),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Positioned(
              left: 32.0,
              top: 16.0,
              right: null,
              bottom: null,
              width: 236.0,
              height: 29.0,
              child: GeneratedTextWidget26(),
            )
          ]),
    );
  }
}
