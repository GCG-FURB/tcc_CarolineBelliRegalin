import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/widgets/button_bar_widget.dart';

class LevelConcludedPage extends StatefulWidget {
  final String levelTitle;
  final String totalExercises;
  final String totalExercisesConcluded;

  const LevelConcludedPage(
      {Key key,
      this.levelTitle,
      this.totalExercises,
      this.totalExercisesConcluded})
      : super(key: key);
  @override
  _LevelConcludedPageState createState() => _LevelConcludedPageState();
}

class _LevelConcludedPageState extends State<LevelConcludedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/trofeu.png',
                      fit: BoxFit.contain,
                      width: 200,
                    ),
                  )
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Parabéns!',
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Você concluiu o nível ',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        widget.levelTitle,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Com ${widget.totalExercisesConcluded} de ${widget.totalExercises} acertos',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ],
            )),
        bottomNavigationBar: ButtonBarWidget(
          onPressed: () {
            Modular.to.navigate('/home');
          },
          description: 'VOLTAR AO INÍCIO',
          color: Colors.purple,
        ));
  }
}
