import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedUserDataFieldWidget1.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedPasswordFieldWidget1.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedUserDataFieldWidget2.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedButtonWidget15.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedSmallButtonsWidget4.dart';

/* Frame Form
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFormWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.0,
      height: 295.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 53.0,
              child: GeneratedUserDataFieldWidget1(),
            ),
            Positioned(
              left: 0.0,
              top: 69.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 53.0,
              child: GeneratedUserDataFieldWidget2(),
            ),
            Positioned(
              left: 0.0,
              top: 138.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 53.0,
              child: GeneratedPasswordFieldWidget1(),
            ),
            Positioned(
              left: 0.0,
              top: 207.0,
              right: null,
              bottom: null,
              width: 343.0,
              height: 56.0,
              child: GeneratedButtonWidget15(),
            ),
            Positioned(
              left: 135.0,
              top: 279.0,
              right: null,
              bottom: null,
              width: 73.0,
              height: 16.0,
              child: GeneratedSmallButtonsWidget4(),
            )
          ]),
    );
  }
}
