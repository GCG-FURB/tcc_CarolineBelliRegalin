import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedLetterWidget5.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedOptionTextWidget5.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Instance Test Option
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTestOptionWidget6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            width: 252.899169921875,
            height: 43.594093322753906,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                width: 2.0,
                color: Color.fromARGB(255, 243, 112, 90),
              ),
            ),
            child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                overflow: Overflow.visible,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      color: Color.fromARGB(255, 255, 245, 238),
                    ),
                  ),
                  Positioned(
                    left: 17.695606231689453,
                    top: 11.797101020812988,
                    right: null,
                    bottom: null,
                    width: 16.0,
                    height: 25.0,
                    child: GeneratedLetterWidget5(),
                  ),
                  Positioned(
                    left: 40.49261474609375,
                    top: 11.797046661376953,
                    right: null,
                    bottom: null,
                    width: 28.0,
                    height: 25.0,
                    child: GeneratedOptionTextWidget5(),
                  )
                ]),
          ),
        ));
  }
}
