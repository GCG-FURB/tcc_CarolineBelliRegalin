import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((_) {
      Modular.to.navigate('/product/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
    )));
  }
}
