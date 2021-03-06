import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTitleWidget69.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedBodyTextWidget57.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedSubtitleWidget44.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedSegmentControlWidget6.dart';

/* Frame Text Content
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTextContentWidget81 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: Container(
          width: 252.899169921875,
          height: 93.63905334472656,
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                Positioned(
                  left: 11.79710578918457,
                  top: 11.797103881835938,
                  right: null,
                  bottom: null,
                  width: 254.899169921875,
                  height: 15.271677017211914,
                  child: GeneratedSubtitleWidget44(),
                ),
                Positioned(
                  left: 0.00002606760972412303,
                  top: 5.898458480834961,
                  right: null,
                  bottom: null,
                  width: 254.899169921875,
                  height: 25.594093322753906,
                  child: GeneratedTitleWidget69(),
                ),
                Positioned(
                  left: 0.00004806380093214102,
                  top: 35.39110565185547,
                  right: null,
                  bottom: null,
                  width: 254.899169921875,
                  height: 17.483623504638672,
                  child: GeneratedBodyTextWidget57(),
                ),
                Positioned(
                  left: 0.0,
                  top: 56.773284912109375,
                  right: null,
                  bottom: null,
                  width: 252.899169921875,
                  height: 30.96724510192871,
                  child: GeneratedSegmentControlWidget6(),
                )
              ]),
        ));
  }
}
