import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:music_app/modules/exercise/controllers/exercises_controller.dart';
import 'package:music_app/modules/exercise/models/response.class.dart';
import 'package:music_app/widgets/card_image_title_widget.dart';

class ResponseWithImages extends StatefulWidget {
  final ExercisesController controller;

  const ResponseWithImages({Key key, this.controller}) : super(key: key);
  @override
  _ResponseWithImagesState createState() => _ResponseWithImagesState();
}

class _ResponseWithImagesState extends State<ResponseWithImages> {
  @override
  Widget build(BuildContext context) {
    List<Response> responses = widget.controller.currentExercise.responses;

    return Observer(builder: (_) {
      return Flexible(
        child: GridView.count(
          primary: false,
          crossAxisCount: 2,
          padding: const EdgeInsets.all(10),
          children: List.generate(responses.length, (index) {
            return CardImageTitleWidget(
              title: responses[index].description,
              pathImage: responses[index].imageUrl,
              primaryColor: Colors.white,
              secondaryColor: Colors.white,
              isSelected:
                  widget.controller.selectedResponse?.id == responses[index].id,
              onPressed: () {
                if (!widget.controller.btnVerifyIsPressed) {
                  widget.controller.setSelectedResponse(index);
                }
              },
            );
          }),
        ),
      );
    });
  }
}
