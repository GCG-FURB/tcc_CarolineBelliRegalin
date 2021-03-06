import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedPasswordIconsWidget1.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedPlaceholderWidget7.dart';

/* Instance Password Field
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedPasswordFieldWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.0,
      height: 53.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          width: 1.0,
          color: Color.fromARGB(255, 190, 186, 179),
        ),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Positioned(
              left: 16.0,
              top: 16.0,
              right: null,
              bottom: null,
              width: 69.0,
              height: 26.0,
              child: GeneratedPlaceholderWidget7(),
            ),
            Positioned(
              left: 303.0,
              top: 14.5,
              right: null,
              bottom: null,
              width: 24.0,
              height: 24.0,
              child: GeneratedPasswordIconsWidget1(),
            )
          ]),
    );
  }
}
