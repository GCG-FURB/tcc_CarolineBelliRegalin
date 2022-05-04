import 'package:flutter/material.dart';

class ButtonBarWidget extends StatelessWidget {
  final String description;
  final Color color;
  final Function onPressed;

  ButtonBarWidget({this.description, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.16,
      child: ButtonTheme(
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(description),
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
        ),
      ),
    );
  }
}
