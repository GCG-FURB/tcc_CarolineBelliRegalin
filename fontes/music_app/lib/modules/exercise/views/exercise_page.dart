import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/exercise/controllers/exercises_controller.dart';
import 'package:music_app/modules/exercise/views/exercise_app_bar.dart';
import 'package:music_app/modules/exercise/views/responses/response_with_choicechip.dart';
import 'package:music_app/modules/exercise/views/responses/response_with_texts.dart';
import 'package:music_app/modules/home/models/level.class.dart';
import 'package:music_app/widgets/bar_feedback_response_widget.dart';
import 'package:music_app/widgets/default_circular_progress_indicator.dart';
import 'package:music_app/widgets/button_bar_widget.dart';
import 'responses/response_with_images.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({key, this.level}) : super(key: key);
  final Level level;

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  final controller = Modular.get<ExercisesController>();

  @override
  void initState() {
    super.initState();
    controller.getListExercises(widget.level.id);
    controller.level = widget.level;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: ExerciseAppBar(
          callbackClose: () => controller.pauseAudio(),
          controller: controller,
        ),
        body: Container(
          color: Colors.white,
          child: Observer(
            builder: (_) {
              if (controller.currentExercise == null) {
                return Container(
                  child:
                      Center(child: DefaultCircularProgressIndicatorWidget()),
                );
              }

              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 70),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: (Text(
                            controller.currentExercise.description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                  if (controller.currentExercise.imageUrl != null &&
                      controller.currentExercise.imageUrl.isNotEmpty)
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 50.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(controller.currentExercise.imageUrl,
                              fit: BoxFit.contain),
                        ],
                      ),
                    ),
                  if (controller.currentExercise.audioUrl != null &&
                      controller.currentExercise.audioUrl.isNotEmpty)
                    Container(
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon:
                                const Icon(Icons.play_circle_fill, size: 72.0),
                            tooltip: 'Clique para reproduzir a nota musical',
                            color: Colors.purple,
                            splashColor: Colors.yellow,
                            onPressed: () {
                              _onClickBtnPlayAudio();
                            },
                          )
                        ],
                      ),
                    ),
                  _buildResponse(),
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Observer(builder: (_) {
            return _buildBarFeedbackResponse(context);
          }),
        ),
      );

  _onClickBtnVerify() {
    if (controller.selectedResponse != null) {
      controller.updateBtnVerifyPressed();

      if (controller.selectedResponse.isCorrect) {
        controller.concludedExercises.add(controller.currentExercise);
      } else {
        controller.decrementLife();
      }
    }
  }

  _onClickBtnNext(context) {
    controller.nextExercise();
  }

  _onClickBtnPlayAudio() {
    if (!controller.playingAudio) {
      controller.playAudio();
    } else {
      controller.pauseAudio();
    }
  }

  _buildBarFeedbackResponse(context) {
    if (controller.btnVerifyIsPressed) {
      return BarFeedbackResponseWidget(
        feedbackDescription: controller.selectedResponse.isCorrect
            ? controller.currentExercise.feedbackCorrectDescription
            : controller.currentExercise.feedbackIncorrectDescription,
        onPressedNextButton: () => _onClickBtnNext(context),
        isCorrect: controller.selectedResponse.isCorrect,
      );
    } else {
      return ButtonBarWidget(
        description: 'VERIFICAR',
        color:
            controller.selectedResponse == null ? Colors.grey : Colors.purple,
        onPressed: () => _onClickBtnVerify(),
      );
    }
  }

  _buildResponse() {
    List<Widget> responseTypes = [
      ResponseWithChoiceChip(controller: controller),
      ResponseWithImages(controller: controller),
      ResponseWithTexts(controller: controller),
    ];

    return responseTypes[controller.currentExercise.responseType];
  }
}
