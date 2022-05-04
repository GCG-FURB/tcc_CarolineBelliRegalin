import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'narrative_controller.g.dart';

class NarrativeController = _NarrativeControllerBase with _$NarrativeController;

abstract class _NarrativeControllerBase with Store {
  List<String> narratives = [
    'Oi, eu sou o Musiquinho e perdi todos os meus instrumentos...',
    'Preciso de alguém para ajudar a encontrá-los.',
    'Você aceita essa missão?',
    'Legal! Para me ajudar você precisa completar exercícios de teoria musical.',
    'Existem vários níveis. A cada nível que você completar, um instrumento será encontrado.',
    'Mas atenção, o instrumento só será encontrado se você acertar todos os exercícios!'
  ];

  @observable
  int currentNarrative = 0;

  _NarrativeControllerBase();

  @action
  next() {
    if (currentNarrative < narratives.length - 1) {
      currentNarrative++;
    } else {
      Modular.to.navigate('/home');
    }
  }
}
