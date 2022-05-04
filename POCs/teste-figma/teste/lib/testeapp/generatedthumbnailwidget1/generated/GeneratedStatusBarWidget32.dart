import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTimeStyleWidget32.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedWifiWidget32.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedBatteryWidget32.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedCellularConnectionWidget32.dart';

/* Instance Status Bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedStatusBarWidget32 extends StatelessWidget {
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
              top: 12.780207633972168,
              right: null,
              bottom: null,
              width: 17.937435150146484,
              height: 8.356240272521973,
              child: GeneratedBatteryWidget32(),
            ),
            Positioned(
              left: 232.4983673095703,
              top: 12.778145790100098,
              right: null,
              bottom: null,
              width: 11.305477142333984,
              height: 8.110468864440918,
              child: GeneratedWifiWidget32(),
            ),
            Positioned(
              left: 216.27745056152344,
              top: 13.025941848754883,
              right: null,
              bottom: null,
              width: 12.534360885620117,
              height: 7.864697456359863,
              child: GeneratedCellularConnectionWidget32(),
            ),
            Positioned(
              left: 15.483627319335938,
              top: 5.406965255737305,
              right: null,
              bottom: null,
              width: 39.81502914428711,
              height: 15.483622550964355,
              child: GeneratedTimeStyleWidget32(),
            )
          ]),
    );
  }
}
