import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_module.dart';
import 'app_widget.dart';

void main() {
  // escutar rota
  Modular.to.addListener(() {
    print(Modular.to.path);
  });

  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
