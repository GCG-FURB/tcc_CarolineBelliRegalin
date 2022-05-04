import 'package:flutter/material.dart';

class ResponseOptionsChoiceChipWidgetRectangleWidget extends StatefulWidget {
  final List<String> options;
  final Color color;

  ResponseOptionsChoiceChipWidgetRectangleWidget(this.options, this.color);

  @override
  State<ResponseOptionsChoiceChipWidgetRectangleWidget> createState() =>
      _ResponseOptionsChoiceChipWidgetRectangleWidgetState();
}

class _ResponseOptionsChoiceChipWidgetRectangleWidgetState
    extends State<ResponseOptionsChoiceChipWidgetRectangleWidget> {
  var _value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
        widget.options.length,
        (int index) {
          return Container(
            margin: EdgeInsets.all(8),
            child: ChoiceChip(
              label: Text(
                widget.options[index],
                style: TextStyle(color: widget.color, fontSize: 16),
              ),
              selected: _value == index,
              selectedColor: Colors.purple[200],
              padding: EdgeInsets.all(24),
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? index : null;
                });
              },
            ),
          );
        },
      ).toList(),
    );
  }
}
