import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/modules/shared/auth/auth_controller.dart';
part 'profile_controller.g.dart';

class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {
  final AuthController auth = Modular.get<AuthController>();

  logoff() async {
    await auth.logout();
    Modular.to.navigate('/login');
  }
}
