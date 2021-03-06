import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedChooseCategoriesWidget.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedSearchFieldWidget.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedHeadersWidget.dart';

/* Frame Frame 5
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame5Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
      height: 192.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 16.0,
              top: 8.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 72.0,
              child: GeneratedHeadersWidget(),
            ),
            Positioned(
              left: 16.0,
              top: 92.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 56.0,
              child: GeneratedSearchFieldWidget(),
            ),
            Positioned(
              left: 16.0,
              top: 160.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 24.0,
              child: GeneratedChooseCategoriesWidget(),
            )
          ]),
    );
  }
}
