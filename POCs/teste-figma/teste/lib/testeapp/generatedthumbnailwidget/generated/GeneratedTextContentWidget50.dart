import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget/generated/GeneratedSubtitleWidget20.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget/generated/GeneratedTitleWidget40.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget/generated/GeneratedBodyTextWidget33.dart';

/* Frame Text Content
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTextContentWidget50 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: 0.00,
        c: -0.00,
        d: 1.00,
        child: Container(
          width: 513.3900146484375,
          height: 154.8964385986328,
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                Positioned(
                  left: 23.948223114013672,
                  top: 23.948209762573242,
                  right: null,
                  bottom: null,
                  width: 467.4935607910156,
                  height: 29.0,
                  child: GeneratedSubtitleWidget20(),
                ),
                Positioned(
                  left: 23.9482364654541,
                  top: 56.93527603149414,
                  right: null,
                  bottom: null,
                  width: 470.4935607910156,
                  height: 53.0,
                  child: GeneratedTitleWidget40(),
                ),
                Positioned(
                  left: 23.9482364654541,
                  top: 110.92233276367188,
                  right: null,
                  bottom: null,
                  width: 467.4935607910156,
                  height: 34.0,
                  child: GeneratedBodyTextWidget33(),
                )
              ]),
        ));
  }
}