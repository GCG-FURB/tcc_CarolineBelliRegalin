import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedHeadersWidget22.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedStatusBarWidget36.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTestCardsWidget1.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedContentWidget32.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedHomeBarWidget45.dart';

/* Frame Course Tests
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCourseTestsWidget1 extends StatelessWidget {
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
                    left: 11.796914100646973,
                    top: 185.06622314453125,
                    right: null,
                    bottom: null,
                    width: 252.899169921875,
                    height: 682.3417358398438,
                    child: GeneratedTestCardsWidget1(),
                  ),
                  Positioned(
                    left: 11.796957969665527,
                    top: 79.6301498413086,
                    right: null,
                    bottom: null,
                    width: 252.899169921875,
                    height: 93.63905334472656,
                    child: GeneratedContentWidget32(),
                  ),
                  Positioned(
                    left: -0.000128084808238782,
                    top: 575.1060791015625,
                    right: null,
                    bottom: null,
                    width: 276.4932556152344,
                    height: 23.594091415405273,
                    child: GeneratedHomeBarWidget45(),
                  ),
                  Positioned(
                    left: 0.0,
                    top: 0.0,
                    right: null,
                    bottom: null,
                    width: 276.4932556152344,
                    height: 32.44187545776367,
                    child: GeneratedStatusBarWidget36(),
                  ),
                  Positioned(
                    left: -0.00009382690768688917,
                    top: 32.44203567504883,
                    right: null,
                    bottom: null,
                    width: 276.4932556152344,
                    height: 29.49261474609375,
                    child: GeneratedHeadersWidget22(),
                  )
                ]),
          ),
        ));
  }
}
