import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedSearchIconWidget6.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedPlaceholderWidget16.dart';

/* Instance Search Field
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedSearchFieldWidget5 extends StatelessWidget {
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
                  left: 11.797067642211914,
                  top: 12.90304946899414,
                  right: null,
                  bottom: null,
                  width: 201.8124542236328,
                  height: 17.483622550964355,
                  child: GeneratedPlaceholderWidget16(),
                ),
                Positioned(
                  left: 223.40655517578125,
                  top: 11.797091484069824,
                  right: null,
                  bottom: null,
                  width: 17.695568084716797,
                  height: 17.695568084716797,
                  child: GeneratedSearchIconWidget6(),
                )
              ]),
        ));
  }
}
