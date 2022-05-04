import 'package:flutter/material.dart';

class ResponseOptionsChoiceChipWidget extends StatefulWidget {
  final List<String> options;
  final Color color;

  ResponseOptionsChoiceChipWidget(this.options, this.color);

  @override
  State<ResponseOptionsChoiceChipWidget> createState() =>
      _ResponseOptionsChoiceChipWidgetState();
}

class _ResponseOptionsChoiceChipWidgetState
    extends State<ResponseOptionsChoiceChipWidget> {
  var _value = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 24.0,
      runSpacing: 5.0,
      direction: Axis.horizontal,
      children: List<Widget>.generate(
        widget.options.length,
        (int index) {
          return ChoiceChip(
            label: Text(
              widget.options[index],
              style: TextStyle(color: widget.color),
            ),
            selected: _value == index,
            selectedColor: Colors.purple[200],
            padding: EdgeInsets.all(16),
            onSelected: (bool selected) {
              setState(() {
                _value = selected ? index : null;
              });
            },
          );
        },
      ).toList(),
    );
  }
}
