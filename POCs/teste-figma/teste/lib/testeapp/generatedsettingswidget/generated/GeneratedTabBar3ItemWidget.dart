import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedsettingswidget/generated/GeneratedTabsWidget8.dart';
import 'package:flutterapp/testeapp/generatedsettingswidget/generated/GeneratedHomeBarWidget13.dart';

/* Frame Tab Bar 3 Item
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTabBar3ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
        bottomRight: Radius.circular(0.0),
        bottomLeft: Radius.circular(0.0),
      ),
      child: Container(
        width: 375.0,
        height: 98.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
            bottomRight: Radius.circular(0.0),
            bottomLeft: Radius.circular(0.0),
          ),
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
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                  bottomRight: Radius.circular(0.0),
                  bottomLeft: Radius.circular(0.0),
                ),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 8.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 58.0,
                child: GeneratedTabsWidget8(),
              ),
              Positioned(
                left: 0.0,
                top: 66.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 32.0,
                child: GeneratedHomeBarWidget13(),
              )
            ]),
      ),
    );
  }
}
