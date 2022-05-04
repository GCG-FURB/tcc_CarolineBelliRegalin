import 'package:flutter/material.dart';

class DefaultCircularProgressIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
    );
  }
}
