import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedIconWidget2.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedTabWidget.dart';

/* Frame Tab 1
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTab1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 54.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 16.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 28.0,
              height: 36.0,
              child: GeneratedIconWidget2(),
            ),
            Positioned(
              left: 0.0,
              top: 36.0,
              right: null,
              bottom: null,
              width: 65.0,
              height: 23.0,
              child: GeneratedTabWidget(),
            )
          ]),
    );
  }
}
