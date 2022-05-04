// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medals_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MedalsController on _MedalsControllerBase, Store {
  final _$listMedalsAtom = Atom(name: '_MedalsControllerBase.listMedals');

  @override
  List<Medal> get listMedals {
    _$listMedalsAtom.reportRead();
    return super.listMedals;
  }

  @override
  set listMedals(List<Medal> value) {
    _$listMedalsAtom.reportWrite(value, super.listMedals, () {
      super.listMedals = value;
    });
  }

  final _$getListMedalsAsyncAction =
      AsyncAction('_MedalsControllerBase.getListMedals');

  @override
  Future getListMedals() {
    return _$getListMedalsAsyncAction.run(() => super.getListMedals());
  }

  @override
  String toString() {
    return '''
listMedals: ${listMedals}
    ''';
  }
}
