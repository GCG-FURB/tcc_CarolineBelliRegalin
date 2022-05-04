import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedtestquestionwidget/generated/GeneratedOptionTextWidget2.dart';
import 'package:flutterapp/testeapp/generatedtestquestionwidget/generated/GeneratedLetterWidget2.dart';

/* Instance Test Option
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTestOptionWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: 343.0,
        height: 58.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            width: 2.0,
            color: Color.fromARGB(255, 243, 112, 90),
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
                  color: Color.fromARGB(255, 255, 245, 238),
                ),
              ),
              Positioned(
                left: 24.0,
                top: 16.0,
                right: null,
                bottom: null,
                width: 19.0,
                height: 31.0,
                child: GeneratedLetterWidget2(),
              ),
              Positioned(
                left: 54.0,
                top: 16.0,
                right: null,
                bottom: null,
                width: 36.0,
                height: 31.0,
                child: GeneratedOptionTextWidget2(),
              )
            ]),
      ),
    );
  }
}
