import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/modules/exercise/models/exercise.class.dart';
import 'package:music_app/modules/exercise/models/response.class.dart';
import 'package:music_app/modules/exercise/repositories/exercise_repository.dart';
import 'package:music_app/modules/shared/auth/auth_controller.dart';
import 'package:music_app/modules/shared/auth/repositories/user_repository.dart';
import 'package:music_app/modules/home/models/level.class.dart';

part 'exercises_controller.g.dart';

class ExercisesController = _ExercisesControllerBase with _$ExercisesController;

abstract class _ExercisesControllerBase with Store {
  final ExerciseRepository exercisesRepository;
  final UserRepository userRepository;
  List<Exercise> listExercises = <Exercise>[];
  List<Exercise> concludedExercises = <Exercise>[];
  AuthController auth = Modular.get();
  Level level;

  @observable
  int lifes = 3;

  @observable
  int currentExerciseIndex;

  @observable
  Exercise currentExercise;

  @observable
  Response selectedResponse;

  @observable
  bool btnVerifyIsPressed = false;

  @observable
  bool playingAudio = false;

  @observable
  AudioPlayer _player = AudioPlayer();

  @observable
  AudioCache cache;

  _ExercisesControllerBase(this.exercisesRepository, this.userRepository) {
    cache = AudioCache(fixedPlayer: _player);
  }

  void getListExercises(int levelId) async {
    listExercises = await exercisesRepository.getExercises(levelId);

    if (listExercises.length > 0) {
      currentExerciseIndex = 0;
      currentExercise = listExercises.first;
    }
  }

  @action
  void setSelectedResponse(index) {
    selectedResponse = currentExercise.responses[index];
  }

  @action
  void updateBtnVerifyPressed() {
    btnVerifyIsPressed = !btnVerifyIsPressed;
  }

  @action
  void nextExercise() {
    if (isLastExercise()) {
      userRepository.saveUserExercises(concludedExercises, auth.currentUser.id);
      userRepository.updateUserPoints(
          auth.currentUser, concludedExercises.length * 10);
      userRepository.saveUserEnabledLevels(level.id + 1, auth.currentUser.id);
      nextPage();
    } else {
      if (lifes == 0) {
        resetLevel();
        Modular.to.pushNamed('./level_loss_page');
      } else {
        currentExerciseIndex++;
        currentExercise = listExercises[currentExerciseIndex];
        selectedResponse = null;
        updateBtnVerifyPressed();
      }
    }
  }

  @action
  void decrementLife() {
    if (lifes > 0) {
      lifes--;
    }
  }

  @action
  void playAudio() {
    cache.play(currentExercise.audioUrl);
    playingAudio = true;
  }

  @action
  void pauseAudio() {
    _player.pause();
    playingAudio = false;
  }

  void resetLevel() {
    currentExerciseIndex = 0;
    currentExercise = listExercises[currentExerciseIndex];
    selectedResponse = null;
    concludedExercises = [];
    lifes = 3;
    updateBtnVerifyPressed();
  }

  bool isLastExercise() {
    return currentExerciseIndex + 1 > listExercises.length;
  }

  void nextPage() {
    if (concludedExercises.length == listExercises.length) {
      userRepository.saveUserMedal(level.medal.id, auth.currentUser.id);
      Modular.to.navigate(
          './level_medal_page?levelTitle=${level.title}&totalExercises=${listExercises.length}&totalExercisesConcluded=${concludedExercises.length}&medalImageUrl=${level.medal.imageUrl}&medalDescription=${level.medal.description}');
    } else {
      Modular.to.navigate(
          './instrument_not_found_page?levelTitle=${level.title}&totalExercises=${listExercises.length}&totalExercisesConcluded=${concludedExercises.length}');
    }
  }
}
