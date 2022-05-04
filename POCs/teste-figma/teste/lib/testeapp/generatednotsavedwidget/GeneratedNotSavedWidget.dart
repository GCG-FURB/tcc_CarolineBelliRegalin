import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatednotsavedwidget/generated/GeneratedStatusBarWidget10.dart';
import 'package:flutterapp/testeapp/generatednotsavedwidget/generated/GeneratedHomeBarWidget11.dart';
import 'package:flutterapp/testeapp/generatednotsavedwidget/generated/GeneratedHeadersWidget2.dart';
import 'package:flutterapp/testeapp/generatednotsavedwidget/generated/GeneratedContentWidget8.dart';

/* Frame Not Saved
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedNotSavedWidget extends StatelessWidget {
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
                top: 0.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 44.0,
                child: GeneratedStatusBarWidget10(),
              ),
              Positioned(
                left: 121.0,
                top: 778.0,
                right: null,
                bottom: null,
                width: 134.0,
                height: 34.0,
                child: GeneratedHomeBarWidget11(),
              ),
              Positioned(
                left: 0.0,
                top: 211.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 455.0,
                child: GeneratedContentWidget8(),
              ),
              Positioned(
                left: 0.0,
                top: 44.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 40.0,
                child: GeneratedHeadersWidget2(),
              )
            ]),
      ),
    ));
  }
}