import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedcoursetestswidget/generated/GeneratedTabWidget15.dart';

/* Frame Tab 1
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTab1Widget5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(0.0),
        bottomRight: Radius.circular(0.0),
        bottomLeft: Radius.circular(16.0),
      ),
      child: Container(
        width: 114.0,
        height: 42.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            bottomLeft: Radius.circular(16.0),
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
                  topRight: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  bottomLeft: Radius.circular(16.0),
                ),
                child: Container(
                  color: Color.fromARGB(255, 247, 242, 238),
                ),
              ),
              Positioned(
                left: 22.0,
                top: 8.0,
                right: null,
                bottom: null,
                width: 75.0,
                height: 31.0,
                child: GeneratedTabWidget15(),
              )
            ]),
      ),
    );
  }
}
