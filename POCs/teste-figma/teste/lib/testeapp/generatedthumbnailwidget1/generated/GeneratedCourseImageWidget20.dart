import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedCoolKidsHighTechWidget5.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedPriceWidget45.dart';

/* Frame Course Image
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCourseImageWidget20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 252.899169921875,
      height: 143.0391845703125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.898522853851318),
          topRight: Radius.circular(5.898522853851318),
          bottomRight: Radius.circular(0.0),
          bottomLeft: Radius.circular(0.0),
        ),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.898522853851318),
                topRight: Radius.circular(5.898522853851318),
                bottomRight: Radius.circular(0.0),
                bottomLeft: Radius.circular(0.0),
              ),
              child: Container(
                color: Color.fromARGB(255, 230, 237, 244),
              ),
            ),
            Positioned(
              left: 0.0,
              top: 11.797045707702637,
              right: null,
              bottom: null,
              width: 252.899169921875,
              height: 101.54656982421875,
              child: GeneratedCoolKidsHighTechWidget5(),
            ),
            Positioned(
              left: 0.0,
              top: 113.34361267089844,
              right: null,
              bottom: null,
              width: 252.899169921875,
              height: 29.695568084716797,
              child: GeneratedPriceWidget45(),
            )
          ]),
    );
  }
}
