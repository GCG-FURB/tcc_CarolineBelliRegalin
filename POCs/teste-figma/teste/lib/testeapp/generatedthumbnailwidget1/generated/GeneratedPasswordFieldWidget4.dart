import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedPasswordIconsWidget5.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedPlaceholderWidget23.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Instance Password Field
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedPasswordFieldWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: Container(
          width: 252.899169921875,
          height: 39.07771301269531,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              width: 1.0,
              color: Color.fromARGB(255, 190, 186, 179),
            ),
          ),
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Positioned(
                  left: 11.797045707702637,
                  top: 11.53885555267334,
                  right: null,
                  bottom: null,
                  width: 52.0,
                  height: 21.0,
                  child: GeneratedPlaceholderWidget23(),
                ),
                Positioned(
                  left: 223.40655517578125,
                  top: 10.691072463989258,
                  right: null,
                  bottom: null,
                  width: 17.695568084716797,
                  height: 17.695568084716797,
                  child: GeneratedPasswordIconsWidget5(),
                )
              ]),
        ));
  }
}
