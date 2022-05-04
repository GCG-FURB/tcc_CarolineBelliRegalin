import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ResponseWithChoiceChip extends StatefulWidget {
  final controller;

  ResponseWithChoiceChip({Key key, this.controller}) : super(key: key);

  @override
  _ResponseWithChoiceChipState createState() => _ResponseWithChoiceChipState();
}

class _ResponseWithChoiceChipState extends State<ResponseWithChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Container(
          alignment: Alignment.center,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 24.0,
            runSpacing: 5.0,
            direction: Axis.horizontal,
            children: List<Widget>.generate(
              widget.controller.currentExercise.responses.length,
              (int index) {
                return ChoiceChip(
                  label: Text(
                    widget.controller.currentExercise.responses[index]
                        .description,
                    style: TextStyle(color: Colors.purple, fontSize: 18.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                  selected: widget.controller.selectedResponse?.id ==
                      widget.controller.currentExercise.responses[index].id,
                  selectedColor: Colors.purple[200],
                  padding: EdgeInsets.all(24),
                  onSelected: (bool selected) {
                    if (selected && !widget.controller.btnVerifyIsPressed) {
                      widget.controller.setSelectedResponse(index);
                    }
                  },
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
