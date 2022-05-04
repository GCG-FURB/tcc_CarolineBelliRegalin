import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/generated/GeneratedCoolKidsBrainstormingWidget3.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Instance Test Question Image
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedTestQuestionImageWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.00,
        c: 0.00,
        d: 1.00,
        child: Container(
          width: 252.899169921875,
          height: 140.82723999023438,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
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
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    color: Color.fromARGB(255, 247, 242, 238),
                  ),
                ),
                Positioned(
                  left: 11.797041893005371,
                  top: 5.898522853851318,
                  right: null,
                  bottom: null,
                  width: 229.30508422851562,
                  height: 129.0301971435547,
                  child: GeneratedCoolKidsBrainstormingWidget3(),
                )
              ]),
        ));
  }
}
