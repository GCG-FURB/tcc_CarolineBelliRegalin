import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedBodyTextWidget61.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedSegmentControlWidget7.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTitleWidget73.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedSubtitleWidget48.dart';

/* Frame Content
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedContentWidget32 extends StatelessWidget {
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
                  left: 0.00012595833686646074,
                  top: 87.74044036865234,
                  right: null,
                  bottom: null,
                  width: 254.899169921875,
                  height: 15.271677017211914,
                  child: GeneratedSubtitleWidget48(),
                ),
                Positioned(
                  left: 0.0,
                  top: 5.898522853851318,
                  right: null,
                  bottom: null,
                  width: 254.899169921875,
                  height: 25.594093322753906,
                  child: GeneratedTitleWidget73(),
                ),
                Positioned(
                  left: 0.0,
                  top: 35.39113998413086,
                  right: null,
                  bottom: null,
                  width: 254.899169921875,
                  height: 17.483623504638672,
                  child: GeneratedBodyTextWidget61(),
                ),
                Positioned(
                  left: 0.0,
                  top: 56.773284912109375,
                  right: null,
                  bottom: null,
                  width: 252.899169921875,
                  height: 30.96724510192871,
                  child: GeneratedSegmentControlWidget7(),
                )
              ]),
        ));
  }
}