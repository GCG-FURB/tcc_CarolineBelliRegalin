import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/modules/shared/auth/auth_controller.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  AuthController auth = Modular.get();
  @observable
  bool loading = false;

  @action
  Future loginWithGoogle() async {
    try {
      loading = true;
      await auth.loginWithGoogle();
      Modular.to.navigate('/narrative');
    } catch (e) {
      loading = false;
    }
  }
}
