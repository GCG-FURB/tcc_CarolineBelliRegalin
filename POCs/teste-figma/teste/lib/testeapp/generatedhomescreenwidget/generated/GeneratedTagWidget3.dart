import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedButtonWidget5.dart';

/* Instance Tag
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTagWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43.0,
      height: 24.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                color: Color.fromARGB(255, 101, 169, 233),
              ),
            ),
            Positioned(
              left: 11.0,
              top: 3.0,
              right: null,
              bottom: null,
              width: 26.0,
              height: 23.0,
              child: GeneratedButtonWidget5(),
            )
          ]),
    );
  }
}
