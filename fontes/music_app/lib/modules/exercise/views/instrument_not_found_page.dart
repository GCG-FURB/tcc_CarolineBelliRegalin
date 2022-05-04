import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/widgets/button_bar_widget.dart';

class InstrumentNotFoundPage extends StatefulWidget {
  final String levelTitle;
  final String totalExercises;
  final String totalExercisesConcluded;
  const InstrumentNotFoundPage(
      {key, this.levelTitle, this.totalExercises, this.totalExercisesConcluded})
      : super(key: key);

  @override
  _InstrumentNotFoundPageState createState() => _InstrumentNotFoundPageState();
}

class _InstrumentNotFoundPageState extends State<InstrumentNotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.all(28),
            alignment: Alignment.center,
            child: Text(
              'Você não encontrou nenhum instrumento',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            child: Text(
              'Para encontrar um instrumento você deve acertar todos os exercícios do nível. Não desista, ajude o musiquinho a encontrar seus instrumentos!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/personagem-triste.png',
                fit: BoxFit.contain,
                width: 300,
              )),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: ButtonBarWidget(
          onPressed: () {
            Modular.to.navigate(
                './level_concluded_page?levelTitle=${widget.levelTitle}&totalExercises=${widget.totalExercises}&totalExercisesConcluded=${widget.totalExercisesConcluded}');
          },
          description: 'PRÓXIMO',
          color: Colors.purple,
        ),
      ),
    );
  }
}
