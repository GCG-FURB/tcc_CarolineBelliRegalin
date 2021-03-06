import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedTestCardWidget17.dart';

/* Instance Test Card
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTestCardWidget16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: Container(
          width: 252.899169921875,
          height: 327.2723388671875,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              width: 2.0,
              color: Color.fromARGB(255, 190, 186, 179),
            ),
          ),
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Positioned(
                  left: 17.695573806762695,
                  top: 17.695568084716797,
                  right: null,
                  bottom: null,
                  width: 217.50802612304688,
                  height: 285.982666015625,
                  child: GeneratedTestCardWidget17(),
                )
              ]),
        ));
  }
}
