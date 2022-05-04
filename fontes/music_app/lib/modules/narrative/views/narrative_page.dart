import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/narrative/controller/narrative_controller.dart';
import 'package:music_app/widgets/button_bar_widget.dart';

class NarrativePage extends StatefulWidget {
  const NarrativePage({key}) : super(key: key);

  @override
  _NarrativePageState createState() => _NarrativePageState();
}

class _NarrativePageState extends State<NarrativePage> {
  final controller = Modular.get<NarrativeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Observer(
            builder: (BuildContext context) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      alignment: Alignment.center,
                      child: Text(
                        controller.narratives[controller.currentNarrative],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          controller.currentNarrative < 3
                              ? 'assets/images/personagem-triste.png'
                              : 'assets/images/personagem.png',
                          fit: BoxFit.contain,
                          width: 300,
                        )),
                  ]);
            },
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Observer(builder: (BuildContext context) {
            return ButtonBarWidget(
              onPressed: () {
                controller.next();
              },
              description: controller.currentNarrative ==
                      controller.narratives.length - 1
                  ? 'COMEÇAR!'
                  : 'PRÓXIMO',
              color: Colors.purple,
            );
          }),
        ));
  }
}
