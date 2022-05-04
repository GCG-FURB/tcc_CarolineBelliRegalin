import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarFeedbackResponseWidget extends StatelessWidget {
  final String feedbackDescription;
  final Function onPressedNextButton;
  final bool isCorrect;
  const BarFeedbackResponseWidget(
      {this.feedbackDescription, this.onPressedNextButton, this.isCorrect});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isCorrect ? Colors.lightGreen[300] : Colors.red[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(24),
            child: Text(
              feedbackDescription,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16.0,
                color: isCorrect ? Colors.green[900] : Colors.red[900],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(children: [
            Container(
              padding: EdgeInsets.all(24),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.16,
              child: ButtonTheme(
                child: ElevatedButton(
                  onPressed: onPressedNextButton,
                  child: Text('PRÓXIMO'),
                  style: ElevatedButton.styleFrom(
                    primary: isCorrect ? Colors.green : Colors.red[600],
                  ),
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
