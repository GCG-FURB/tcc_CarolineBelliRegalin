import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/widgets/button_bar_widget.dart';

class LevelLossPage extends StatefulWidget {
  const LevelLossPage({key}) : super(key: key);

  @override
  _LevelLossPageState createState() => _LevelLossPageState();
}

class _LevelLossPageState extends State<LevelLossPage> {
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
              'GAME OVER',
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
              'Não desista, ajude o musiquinho a encontrar seus instrumentos!',
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
            Modular.to.pop();
          },
          description: 'REINICIAR',
          color: Colors.purple,
        ),
      ),
    );
  }
}
