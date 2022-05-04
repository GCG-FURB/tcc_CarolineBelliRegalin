import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedsettingswidget/generated/GeneratedSettingsWidget1.dart';
import 'package:flutterapp/testeapp/generatedsettingswidget/generated/GeneratedTabBar3ItemWidget.dart';
import 'package:flutterapp/testeapp/generatedsettingswidget/generated/GeneratedStatusBarWidget12.dart';
import 'package:flutterapp/testeapp/generatedsettingswidget/generated/GeneratedHeadersWidget4.dart';

/* Frame Settings
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedSettingsWidget extends StatelessWidget {
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
                child: GeneratedStatusBarWidget12(),
              ),
              Positioned(
                left: 0.0,
                top: 44.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 40.0,
                child: GeneratedHeadersWidget4(),
              ),
              Positioned(
                left: 0.0,
                top: 108.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 619.0,
                child: GeneratedSettingsWidget1(),
              ),
              Positioned(
                left: 0.0,
                top: 714.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 98.0,
                child: GeneratedTabBar3ItemWidget(),
              )
            ]),
      ),
    ));
  }
}