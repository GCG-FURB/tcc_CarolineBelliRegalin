import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedCellularConnectionWidget28.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTimeStyleWidget28.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedBatteryWidget28.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedWifiWidget28.dart';

/* Instance Status Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedStatusBarWidget28 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 276.4932556152344,
      height: 32.44187545776367,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 247.49050903320312,
              top: 12.780160903930664,
              right: null,
              bottom: null,
              width: 17.937435150146484,
              height: 8.356240272521973,
              child: GeneratedBatteryWidget28(),
            ),
            Positioned(
              left: 232.49835205078125,
              top: 12.778197288513184,
              right: null,
              bottom: null,
              width: 11.305477142333984,
              height: 8.110468864440918,
              child: GeneratedWifiWidget28(),
            ),
            Positioned(
              left: 216.27745056152344,
              top: 13.025894165039062,
              right: null,
              bottom: null,
              width: 12.534360885620117,
              height: 7.864697456359863,
              child: GeneratedCellularConnectionWidget28(),
            ),
            Positioned(
              left: 15.483622550964355,
              top: 5.4069671630859375,
              right: null,
              bottom: null,
              width: 39.81502914428711,
              height: 15.483622550964355,
              child: GeneratedTimeStyleWidget28(),
            )
          ]),
    );
  }
}
