import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedHomeBarWidget8.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedStatusBarWidget7.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedPreviosButton48pxWidget1.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/generated/GeneratedContentWidget6.dart';

/* Frame Sign up
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedSignupWidget extends StatelessWidget {
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
                child: GeneratedStatusBarWidget7(),
              ),
              Positioned(
                left: 121.0,
                top: 778.0,
                right: null,
                bottom: null,
                width: 134.0,
                height: 34.0,
                child: GeneratedHomeBarWidget8(),
              ),
              Positioned(
                left: 0.0,
                top: 102.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 641.0,
                child: GeneratedContentWidget6(),
              ),
              Positioned(
                left: 15.0,
                top: 60.0,
                right: null,
                bottom: null,
                width: 48.0,
                height: 48.0,
                child: GeneratedPreviosButton48pxWidget1(),
              )
            ]),
      ),
    ));
  }
}