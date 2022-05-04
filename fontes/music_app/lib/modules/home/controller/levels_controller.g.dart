// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'levels_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LevelsController on _LevelsControllerBase, Store {
  final _$listSessionAtom = Atom(name: '_LevelsControllerBase.listSession');

  @override
  List<Session> get listSession {
    _$listSessionAtom.reportRead();
    return super.listSession;
  }

  @override
  set listSession(List<Session> value) {
    _$listSessionAtom.reportWrite(value, super.listSession, () {
      super.listSession = value;
    });
  }

  final _$getListAsyncAction = AsyncAction('_LevelsControllerBase.getList');

  @override
  Future getList() {
    return _$getListAsyncAction.run(() => super.getList());
  }

  @override
  String toString() {
    return '''
listSession: ${listSession}
    ''';
  }
}
