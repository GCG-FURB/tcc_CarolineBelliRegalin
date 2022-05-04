import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedWifiWidget35.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedBatteryWidget35.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedCellularConnectionWidget35.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTimeStyleWidget35.dart';

/* Instance Status Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedStatusBarWidget35 extends StatelessWidget {
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
              left: 247.490478515625,
              top: 12.780203819274902,
              right: null,
              bottom: null,
              width: 17.937435150146484,
              height: 8.356240272521973,
              child: GeneratedBatteryWidget35(),
            ),
            Positioned(
              left: 232.4983673095703,
              top: 12.778143882751465,
              right: null,
              bottom: null,
              width: 11.305477142333984,
              height: 8.110468864440918,
              child: GeneratedWifiWidget35(),
            ),
            Positioned(
              left: 216.2774658203125,
              top: 13.02593994140625,
              right: null,
              bottom: null,
              width: 12.534360885620117,
              height: 7.864697456359863,
              child: GeneratedCellularConnectionWidget35(),
            ),
            Positioned(
              left: 15.483622550964355,
              top: 5.4069671630859375,
              right: null,
              bottom: null,
              width: 39.81502914428711,
              height: 15.483622550964355,
              child: GeneratedTimeStyleWidget35(),
            )
          ]),
    );
  }
}
