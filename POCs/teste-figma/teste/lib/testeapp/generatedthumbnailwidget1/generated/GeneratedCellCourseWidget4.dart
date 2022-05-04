import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedNameWidget8.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Instance Cell Course
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCellCourseWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: Container(
          width: 252.899169921875,
          height: 64.88375091552734,
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Positioned(
                  left: 11.797067642211914,
                  top: 5.898519039154053,
                  right: null,
                  bottom: null,
                  width: 232.25433349609375,
                  height: 53.08670425415039,
                  child: GeneratedNameWidget8(),
                )
              ]),
        ));
  }
}
