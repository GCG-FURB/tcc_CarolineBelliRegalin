// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NarrativeController on _NarrativeControllerBase, Store {
  final _$currentNarrativeAtom =
      Atom(name: '_NarrativeControllerBase.currentNarrative');

  @override
  int get currentNarrative {
    _$currentNarrativeAtom.reportRead();
    return super.currentNarrative;
  }

  @override
  set currentNarrative(int value) {
    _$currentNarrativeAtom.reportWrite(value, super.currentNarrative, () {
      super.currentNarrative = value;
    });
  }

  final _$_NarrativeControllerBaseActionController =
      ActionController(name: '_NarrativeControllerBase');

  @override
  dynamic next() {
    final _$actionInfo = _$_NarrativeControllerBaseActionController.startAction(
        name: '_NarrativeControllerBase.next');
    try {
      return super.next();
    } finally {
      _$_NarrativeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentNarrative: ${currentNarrative}
    ''';
  }
}
