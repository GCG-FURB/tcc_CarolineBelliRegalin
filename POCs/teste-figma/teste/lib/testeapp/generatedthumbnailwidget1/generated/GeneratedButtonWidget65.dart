import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTextWidget58.dart';

/* Instance Button
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedButtonWidget65 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: Container(
          width: 252.899169921875,
          height: 41.2896614074707,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    color: Color.fromARGB(255, 227, 86, 41),
                  ),
                ),
                Positioned(
                  left: 23.594091415405273,
                  top: 11.797046661376953,
                  right: null,
                  bottom: null,
                  width: 207.7109832763672,
                  height: 19.695568084716797,
                  child: GeneratedTextWidget58(),
                )
              ]),
        ));
  }
}
