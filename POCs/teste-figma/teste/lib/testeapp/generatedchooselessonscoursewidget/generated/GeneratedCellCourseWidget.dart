import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedchooselessonscoursewidget/generated/GeneratedNameWidget4.dart';

/* Instance Cell Course
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCellCourseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.0,
      height: 88.0,
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
              left: 16.0,
              top: 8.0,
              right: null,
              bottom: null,
              width: 315.0,
              height: 72.0,
              child: GeneratedNameWidget4(),
            )
          ]),
    );
  }
}
