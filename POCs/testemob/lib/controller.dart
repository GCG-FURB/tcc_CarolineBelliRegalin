import 'package:mobx/mobx.dart';

import 'models/client.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "este campo é obrigatório";
    } else if (client.name.length < 3) {
      return "seu nome precisa mais de 3 caracters";
    }

    return null;
  }

  String validateEmail() {
    if (client.name == null || client.name.isEmpty) {
      return "este campo é obrigatório";
    } else if (!client.name.contains("@")) {
      return "esse não é um email válido";
    }

    return null;
  }
}
