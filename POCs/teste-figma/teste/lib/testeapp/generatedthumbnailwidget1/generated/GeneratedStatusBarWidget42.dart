import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedBatteryWidget42.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedCellularConnectionWidget42.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedWifiWidget42.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTimeStyleWidget42.dart';

/* Instance Status Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedStatusBarWidget42 extends StatelessWidget {
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
              top: 12.780094146728516,
              right: null,
              bottom: null,
              width: 17.937435150146484,
              height: 8.356240272521973,
              child: GeneratedBatteryWidget42(),
            ),
            Positioned(
              left: 232.49838256835938,
              top: 12.7781400680542,
              right: null,
              bottom: null,
              width: 11.305477142333984,
              height: 8.110468864440918,
              child: GeneratedWifiWidget42(),
            ),
            Positioned(
              left: 216.27748107910156,
              top: 13.02598762512207,
              right: null,
              bottom: null,
              width: 12.534360885620117,
              height: 7.864697456359863,
              child: GeneratedCellularConnectionWidget42(),
            ),
            Positioned(
              left: 15.483622550964355,
              top: 5.4069671630859375,
              right: null,
              bottom: null,
              width: 39.81502914428711,
              height: 15.483622550964355,
              child: GeneratedTimeStyleWidget42(),
            )
          ]),
    );
  }
}