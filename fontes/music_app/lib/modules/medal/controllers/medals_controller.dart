import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/medal/models/medal.class.dart';
import 'package:music_app/modules/medal/repositories/medal_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/modules/shared/auth/auth_controller.dart';
part 'medals_controller.g.dart';

class MedalsController = _MedalsControllerBase with _$MedalsController;

abstract class _MedalsControllerBase with Store {
  final MedalRepository medalRepository;
  AuthController auth = Modular.get();

  @observable
  List<Medal> listMedals = <Medal>[].asObservable();

  _MedalsControllerBase(this.medalRepository) {
    getListMedals();
  }

  @action
  getListMedals() async {
    listMedals = await medalRepository.getUserMedals(auth.currentUser.id);
  }
}
