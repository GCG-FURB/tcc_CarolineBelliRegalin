import 'package:flutter/material.dart';
import 'package:music_app/widgets/response_options_choice_chip_rectangle_widget.dart';

class ReponseMatchPairs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ResponseOptionsChoiceChipWidgetRectangleWidget(
          [
            'Melodia',
            'Harmonia',
            'Ritmo',
          ],
          Colors.purple,
        ),
        ResponseOptionsChoiceChipWidgetRectangleWidget(
          [
            'Baixo',
            'Flauta',
            'Voz',
          ],
          Colors.purple,
        ),
      ],
    );
  }
}
