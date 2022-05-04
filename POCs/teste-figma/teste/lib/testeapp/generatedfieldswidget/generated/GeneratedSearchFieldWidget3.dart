import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedfieldswidget/generated/GeneratedSearchIconWidget3.dart';
import 'package:flutterapp/testeapp/generatedfieldswidget/generated/GeneratedPlaceholderWidget10.dart';

/* Component Search Field
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedSearchFieldWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.0,
      height: 56.0,
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
              top: 17.5,
              right: null,
              bottom: null,
              width: 273.0,
              height: 23.0,
              child: GeneratedPlaceholderWidget10(),
            ),
            Positioned(
              left: 303.0,
              top: 16.0,
              right: null,
              bottom: null,
              width: 24.0,
              height: 24.0,
              child: GeneratedSearchIconWidget3(),
            )
          ]),
    );
  }
}
