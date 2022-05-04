import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/widgets/button_bar_widget.dart';

class LevelMedalPage extends StatelessWidget {
  final String medalImageUrl;
  final String medalDescription;
  final String levelTitle;
  final String totalExercises;
  final String totalExercisesConcluded;
  const LevelMedalPage(
      {key,
      this.medalImageUrl,
      this.medalDescription,
      this.levelTitle,
      this.totalExercises,
      this.totalExercisesConcluded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Instrumento encontrado!',
                      style: TextStyle(fontSize: 28.0),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      medalDescription,
                      style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.purple[800],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(30),
                      child: Image.asset(medalImageUrl,
                          fit: BoxFit.contain, width: 200),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Você concluiu o nível ',
                      style: TextStyle(fontSize: 18.0, color: Colors.grey[700]),
                    ),
                    Text(
                      '$levelTitle',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'e encontrou o instrumento ',
                      style: TextStyle(fontSize: 18.0, color: Colors.grey[700]),
                    ),
                    Text(
                      '$medalDescription',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]),
                    ),
                  ],
                )
              ],
            )),
        bottomNavigationBar: ButtonBarWidget(
          onPressed: () {
            Modular.to.navigate(
                './level_concluded_page?levelTitle=$levelTitle&totalExercises=$totalExercises&totalExercisesConcluded=$totalExercisesConcluded');
          },
          description: 'CONTINUAR',
          color: Colors.purple,
        ));
  }
}
