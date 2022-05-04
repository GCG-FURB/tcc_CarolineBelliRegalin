import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedsettingswidget/generated/GeneratedProfileIconWidget2.dart';
import 'package:flutterapp/testeapp/generatedsettingswidget/generated/GeneratedTabWidget7.dart';

/* Instance Tabs
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTabsWidget10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.0,
      height: 54.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 18.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 28.0,
              height: 36.0,
              child: GeneratedProfileIconWidget2(),
            ),
            Positioned(
              left: 2.0,
              top: 36.0,
              right: null,
              bottom: null,
              width: 65.0,
              height: 23.0,
              child: GeneratedTabWidget7(),
            )
          ]),
    );
  }
}
