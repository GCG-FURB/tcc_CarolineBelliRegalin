import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedFrame5Widget.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedStatusBarWidget.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedCardsWidget.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedHomeBarWidget.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/generated/GeneratedTabBar1ItemWidget.dart';

/* Frame Home Screen
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedHomeScreenWidget extends StatelessWidget {
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
                left: 16.0,
                top: 248.0,
                right: null,
                bottom: null,
                width: 343.0,
                height: 610.0,
                child: GeneratedCardsWidget(),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 44.0,
                child: GeneratedStatusBarWidget(),
              ),
              Positioned(
                left: 121.0,
                top: 778.0,
                right: null,
                bottom: null,
                width: 134.0,
                height: 34.0,
                child: GeneratedHomeBarWidget(),
              ),
              Positioned(
                left: 0.0,
                top: 44.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 192.0,
                child: GeneratedFrame5Widget(),
              ),
              Positioned(
                left: 0.0,
                top: 714.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 98.0,
                child: GeneratedTabBar1ItemWidget(),
              )
            ]),
      ),
    ));
  }
}
