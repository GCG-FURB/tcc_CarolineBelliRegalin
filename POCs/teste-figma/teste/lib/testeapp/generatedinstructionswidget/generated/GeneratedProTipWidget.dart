import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedinstructionswidget/generated/GeneratedIntroWidget1.dart';

/* Frame Pro Tip
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedProTipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 556.0829467773438,
      height: 192.31784057617188,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.579462051391602),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.579462051391602),
              child: Container(
                color: Color.fromARGB(255, 188, 244, 244),
              ),
            ),
            Positioned(
              left: 21.158954620361328,
              top: 21.158912658691406,
              right: null,
              bottom: null,
              width: 515.76513671875,
              height: 152.0,
              child: GeneratedIntroWidget1(),
            )
          ]),
    );
  }
}
