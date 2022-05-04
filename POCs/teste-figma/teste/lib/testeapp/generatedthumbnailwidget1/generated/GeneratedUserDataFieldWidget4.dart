import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedPlaceholderWidget20.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Instance User Data Field
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedUserDataFieldWidget4 extends StatelessWidget {
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
                  left: 11.797046661376953,
                  top: 11.79704475402832,
                  right: null,
                  bottom: null,
                  width: 234.30508422851562,
                  height: 20.48362159729004,
                  child: GeneratedPlaceholderWidget20(),
                )
              ]),
        ));
  }
}
