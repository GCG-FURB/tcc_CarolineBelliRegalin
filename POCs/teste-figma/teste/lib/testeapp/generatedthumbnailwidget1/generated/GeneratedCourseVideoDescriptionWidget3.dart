import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTextContentWidget96.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedVideoWidget3.dart';

/* Instance Course Video  Description
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCourseVideoDescriptionWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: Container(
          width: 252.899169921875,
          height: 324.41876220703125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              width: 1.0,
              color: Color.fromARGB(255, 205, 205, 205),
            ),
          ),
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                Positioned(
                  left: 0.0,
                  top: -0.5671172142028809,
                  right: null,
                  bottom: null,
                  width: 252.899169921875,
                  height: 246.26333618164062,
                  child: GeneratedVideoWidget3(),
                ),
                Positioned(
                  left: 0.0,
                  top: 251.59474182128906,
                  right: null,
                  bottom: null,
                  width: 252.899169921875,
                  height: 67.49261474609375,
                  child: GeneratedTextContentWidget96(),
                )
              ]),
        ));
  }
}