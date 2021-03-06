import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedtestquestionwidget/generated/GeneratedLetterWidget.dart';
import 'package:flutterapp/testeapp/generatedtestquestionwidget/generated/GeneratedOptionTextWidget.dart';

/* Instance Test Option
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTestOptionWidget extends StatelessWidget {
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
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: 24.0,
                top: 16.0,
                right: null,
                bottom: null,
                width: 20.0,
                height: 31.0,
                child: GeneratedLetterWidget(),
              ),
              Positioned(
                left: 55.0,
                top: 16.0,
                right: null,
                bottom: null,
                width: 39.0,
                height: 31.0,
                child: GeneratedOptionTextWidget(),
              )
            ]),
      ),
    );
  }
}
