import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedintro2widget/generated/Generated3Widget1.dart';
import 'package:flutterapp/testeapp/generatedintro2widget/generated/Generated1Widget.dart';
import 'package:flutterapp/testeapp/generatedintro2widget/generated/Generated2CurrentWidget.dart';

/* Instance Pagination
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedPaginationWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52.0,
      height: 6.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 46.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 6.0,
              height: 6.0,
              child: Generated3Widget1(),
            ),
            Positioned(
              left: 18.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 16.0,
              height: 6.0,
              child: Generated2CurrentWidget(),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 6.0,
              height: 6.0,
              child: Generated1Widget(),
            )
          ]),
    );
  }
}
