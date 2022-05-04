import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:music_app/modules/exercise/controllers/exercises_controller.dart';
import 'package:music_app/modules/exercise/models/response.class.dart';

class ResponseWithTexts extends StatefulWidget {
  final ExercisesController controller;

  const ResponseWithTexts({Key key, this.controller}) : super(key: key);
  @override
  _ResponseWithTextsState createState() => _ResponseWithTextsState();
}

class _ResponseWithTextsState extends State<ResponseWithTexts> {
  @override
  Widget build(BuildContext context) {
    List<Response> responses = widget.controller.currentExercise.responses;

    return Flexible(
        child: ListView.builder(
            padding: EdgeInsets.all(5),
            itemCount: responses.length,
            itemBuilder: (context, index) {
              return Observer(builder: (_) {
                return Container(
                    margin: EdgeInsets.all(10),
                    child: OutlinedButton(
                      child: Text(
                        responses[index].description,
                        style: TextStyle(fontSize: 20.0, color: Colors.purple),
                        textAlign: TextAlign.center,
                      ),
                      style: OutlinedButton.styleFrom(
                          backgroundColor:
                              widget.controller.selectedResponse?.id ==
                                      responses[index].id
                                  ? Colors.purple.withOpacity(0.3)
                                  : Colors.white,
                          side: BorderSide(
                              width: 2.0,
                              color: widget.controller.selectedResponse?.id ==
                                      responses[index].id
                                  ? Colors.purple
                                  : Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.all(10)),
                      onPressed: () {
                        if (!widget.controller.btnVerifyIsPressed) {
                          widget.controller.setSelectedResponse(index);
                        }
                      },
                    ));
              });
            }));
  }
}
