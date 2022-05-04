import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/modules/home/models/session.class.dart';
import 'package:music_app/modules/home/repositories/session_repository.dart';
import 'package:music_app/modules/shared/auth/auth_controller.dart';

part 'levels_controller.g.dart';

class LevelsController = _LevelsControllerBase with _$LevelsController;

abstract class _LevelsControllerBase with Store {
  final SessionRepository sessionRepository;
  AuthController auth = Modular.get();

  @observable
  List<Session> listSession = <Session>[].asObservable();

  _LevelsControllerBase(this.sessionRepository) {
    getList();
  }

  @action
  getList() async {
    listSession = await sessionRepository.getSessions(auth.currentUser.id);
  }
}
