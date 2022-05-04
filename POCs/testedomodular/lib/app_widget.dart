import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp().modular();
  }
}
