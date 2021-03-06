import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedContentWidget53.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedHeadersWidget31.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedHomeBarWidget54.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedStatusBarWidget45.dart';

/* Frame Choose Lessons Course
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedChooseLessonsCourseWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(17.69556999206543),
          child: Container(
            width: 276.4932556152344,
            height: 598.7000732421875,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.69556999206543),
            ),
            child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                overflow: Overflow.visible,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(17.69556999206543),
                    child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Positioned(
                    left: -0.00005667508230544627,
                    top: 79.63006591796875,
                    right: null,
                    bottom: null,
                    width: 276.4932556152344,
                    height: 554.461181640625,
                    child: GeneratedContentWidget53(),
                  ),
                  Positioned(
                    left: -0.00003684365583467297,
                    top: 575.1060791015625,
                    right: null,
                    bottom: null,
                    width: 276.4932556152344,
                    height: 23.594091415405273,
                    child: GeneratedHomeBarWidget54(),
                  ),
                  Positioned(
                    left: 0.0,
                    top: 0.0,
                    right: null,
                    bottom: null,
                    width: 276.4932556152344,
                    height: 32.44187545776367,
                    child: GeneratedStatusBarWidget45(),
                  ),
                  Positioned(
                    left: -0.00006698239303659648,
                    top: 38.340396881103516,
                    right: null,
                    bottom: null,
                    width: 276.4932556152344,
                    height: 29.49261474609375,
                    child: GeneratedHeadersWidget31(),
                  )
                ]),
          ),
        ));
  }
}
