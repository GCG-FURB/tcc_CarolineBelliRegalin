import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedCourseCardWidget19.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedCourseCardWidget18.dart';

/* Frame Cards
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCardsWidget8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: Container(
          width: 252.899169921875,
          height: 453.0635986328125,
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
                  width: 252.899169921875,
                  height: 220.63327026367188,
                  child: GeneratedCourseCardWidget18(),
                ),
                Positioned(
                  left: 0.0,
                  top: 232.43031311035156,
                  right: null,
                  bottom: null,
                  width: 252.899169921875,
                  height: 220.63327026367188,
                  child: GeneratedCourseCardWidget19(),
                )
              ]),
        ));
  }
}
