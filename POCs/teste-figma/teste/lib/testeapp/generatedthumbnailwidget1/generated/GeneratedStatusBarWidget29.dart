import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedCellularConnectionWidget29.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTimeStyleWidget29.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedWifiWidget29.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedBatteryWidget29.dart';

/* Instance Status Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedStatusBarWidget29 extends StatelessWidget {
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
              left: 247.49041748046875,
              top: 12.780084609985352,
              right: null,
              bottom: null,
              width: 17.937435150146484,
              height: 8.356240272521973,
              child: GeneratedBatteryWidget29(),
            ),
            Positioned(
              left: 232.49838256835938,
              top: 12.778185844421387,
              right: null,
              bottom: null,
              width: 11.305477142333984,
              height: 8.110468864440918,
              child: GeneratedWifiWidget29(),
            ),
            Positioned(
              left: 216.27745056152344,
              top: 13.025897979736328,
              right: null,
              bottom: null,
              width: 12.534360885620117,
              height: 7.864697456359863,
              child: GeneratedCellularConnectionWidget29(),
            ),
            Positioned(
              left: 15.483627319335938,
              top: 5.406965255737305,
              right: null,
              bottom: null,
              width: 39.81502914428711,
              height: 15.483622550964355,
              child: GeneratedTimeStyleWidget29(),
            )
          ]),
    );
  }
}
