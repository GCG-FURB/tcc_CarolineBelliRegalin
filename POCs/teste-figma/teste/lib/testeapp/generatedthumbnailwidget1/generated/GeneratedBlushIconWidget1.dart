import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTitleWidget92.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedBlushyIconWidget1.dart';

/* Instance Blush Icon
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBlushIconWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 292.0,
      height: 136.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          width: 8.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Positioned(
              left: 24.0,
              top: 24.0,
              right: null,
              bottom: null,
              width: 88.0,
              height: 88.0,
              child: GeneratedBlushyIconWidget1(),
            ),
            Positioned(
              left: 144.0,
              top: 41.0,
              right: null,
              bottom: null,
              width: 129.0,
              height: 59.0,
              child: GeneratedTitleWidget92(),
            )
          ]),
    );
  }
}
