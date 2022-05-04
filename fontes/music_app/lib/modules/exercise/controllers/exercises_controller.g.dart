// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercises_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ExercisesController on _ExercisesControllerBase, Store {
  final _$lifesAtom = Atom(name: '_ExercisesControllerBase.lifes');

  @override
  int get lifes {
    _$lifesAtom.reportRead();
    return super.lifes;
  }

  @override
  set lifes(int value) {
    _$lifesAtom.reportWrite(value, super.lifes, () {
      super.lifes = value;
    });
  }

  final _$currentExerciseIndexAtom =
      Atom(name: '_ExercisesControllerBase.currentExerciseIndex');

  @override
  int get currentExerciseIndex {
    _$currentExerciseIndexAtom.reportRead();
    return super.currentExerciseIndex;
  }

  @override
  set currentExerciseIndex(int value) {
    _$currentExerciseIndexAtom.reportWrite(value, super.currentExerciseIndex,
        () {
      super.currentExerciseIndex = value;
    });
  }

  final _$currentExerciseAtom =
      Atom(name: '_ExercisesControllerBase.currentExercise');

  @override
  Exercise get currentExercise {
    _$currentExerciseAtom.reportRead();
    return super.currentExercise;
  }

  @override
  set currentExercise(Exercise value) {
    _$currentExerciseAtom.reportWrite(value, super.currentExercise, () {
      super.currentExercise = value;
    });
  }

  final _$selectedResponseAtom =
      Atom(name: '_ExercisesControllerBase.selectedResponse');

  @override
  Response get selectedResponse {
    _$selectedResponseAtom.reportRead();
    return super.selectedResponse;
  }

  @override
  set selectedResponse(Response value) {
    _$selectedResponseAtom.reportWrite(value, super.selectedResponse, () {
      super.selectedResponse = value;
    });
  }

  final _$btnVerifyIsPressedAtom =
      Atom(name: '_ExercisesControllerBase.btnVerifyIsPressed');

  @override
  bool get btnVerifyIsPressed {
    _$btnVerifyIsPressedAtom.reportRead();
    return super.btnVerifyIsPressed;
  }

  @override
  set btnVerifyIsPressed(bool value) {
    _$btnVerifyIsPressedAtom.reportWrite(value, super.btnVerifyIsPressed, () {
      super.btnVerifyIsPressed = value;
    });
  }

  final _$playingAudioAtom =
      Atom(name: '_ExercisesControllerBase.playingAudio');

  @override
  bool get playingAudio {
    _$playingAudioAtom.reportRead();
    return super.playingAudio;
  }

  @override
  set playingAudio(bool value) {
    _$playingAudioAtom.reportWrite(value, super.playingAudio, () {
      super.playingAudio = value;
    });
  }

  final _$_playerAtom = Atom(name: '_ExercisesControllerBase._player');

  @override
  AudioPlayer get _player {
    _$_playerAtom.reportRead();
    return super._player;
  }

  @override
  set _player(AudioPlayer value) {
    _$_playerAtom.reportWrite(value, super._player, () {
      super._player = value;
    });
  }

  final _$cacheAtom = Atom(name: '_ExercisesControllerBase.cache');

  @override
  AudioCache get cache {
    _$cacheAtom.reportRead();
    return super.cache;
  }

  @override
  set cache(AudioCache value) {
    _$cacheAtom.reportWrite(value, super.cache, () {
      super.cache = value;
    });
  }

  final _$_ExercisesControllerBaseActionController =
      ActionController(name: '_ExercisesControllerBase');

  @override
  void setSelectedResponse(dynamic index) {
    final _$actionInfo = _$_ExercisesControllerBaseActionController.startAction(
        name: '_ExercisesControllerBase.setSelectedResponse');
    try {
      return super.setSelectedResponse(index);
    } finally {
      _$_ExercisesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateBtnVerifyPressed() {
    final _$actionInfo = _$_ExercisesControllerBaseActionController.startAction(
        name: '_ExercisesControllerBase.updateBtnVerifyPressed');
    try {
      return super.updateBtnVerifyPressed();
    } finally {
      _$_ExercisesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void nextExercise() {
    final _$actionInfo = _$_ExercisesControllerBaseActionController.startAction(
        name: '_ExercisesControllerBase.nextExercise');
    try {
      return super.nextExercise();
    } finally {
      _$_ExercisesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementLife() {
    final _$actionInfo = _$_ExercisesControllerBaseActionController.startAction(
        name: '_ExercisesControllerBase.decrementLife');
    try {
      return super.decrementLife();
    } finally {
      _$_ExercisesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void playAudio() {
    final _$actionInfo = _$_ExercisesControllerBaseActionController.startAction(
        name: '_ExercisesControllerBase.playAudio');
    try {
      return super.playAudio();
    } finally {
      _$_ExercisesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pauseAudio() {
    final _$actionInfo = _$_ExercisesControllerBaseActionController.startAction(
        name: '_ExercisesControllerBase.pauseAudio');
    try {
      return super.pauseAudio();
    } finally {
      _$_ExercisesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lifes: ${lifes},
currentExerciseIndex: ${currentExerciseIndex},
currentExercise: ${currentExercise},
selectedResponse: ${selectedResponse},
btnVerifyIsPressed: ${btnVerifyIsPressed},
playingAudio: ${playingAudio},
cache: ${cache}
    ''';
  }
}
