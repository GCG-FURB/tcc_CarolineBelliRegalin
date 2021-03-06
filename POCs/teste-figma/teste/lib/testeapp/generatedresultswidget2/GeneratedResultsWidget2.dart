import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedresultswidget2/generated/GeneratedHeadersWidget10.dart';
import 'package:flutterapp/testeapp/generatedresultswidget2/generated/GeneratedTestWidget3.dart';
import 'package:flutterapp/testeapp/generatedresultswidget2/generated/GeneratedHomeBarWidget20.dart';
import 'package:flutterapp/testeapp/generatedresultswidget2/generated/GeneratedStatusBarWidget18.dart';
import 'package:flutterapp/testeapp/generatedresultswidget2/generated/GeneratedSocialButtonsWidget8.dart';
import 'package:flutterapp/testeapp/generatedresultswidget2/generated/GeneratedContentWidget17.dart';

/* Frame Results
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedResultsWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 375.0,
        height: 812.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 60.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 655.0,
                child: GeneratedTestWidget3(),
              ),
              Positioned(
                left: 0.0,
                top: 780.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 32.0,
                child: GeneratedHomeBarWidget20(),
              ),
              Positioned(
                left: 0.0,
                top: 186.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 441.0,
                child: GeneratedContentWidget17(),
              ),
              Positioned(
                left: 116.0,
                top: 732.0,
                right: null,
                bottom: null,
                width: 152.0,
                height: 40.0,
                child: GeneratedSocialButtonsWidget8(),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 44.0,
                child: GeneratedStatusBarWidget18(),
              ),
              Positioned(
                left: 0.0,
                top: 44.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 40.0,
                child: GeneratedHeadersWidget10(),
              )
            ]),
      ),
    ));
  }
}
