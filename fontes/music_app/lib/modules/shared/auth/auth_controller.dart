import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:music_app/modules/shared/auth/repositories/auth_repository_interface.dart';
import 'package:music_app/modules/shared/auth/repositories/user_repository.dart';
import 'package:music_app/modules/shared/auth/user/user_app.class.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();
  final UserRepository _userRepository = Modular.get();

  @observable
  UserApp currentUser;

  @observable
  AuthStatus status = AuthStatus.loading;

  @observable
  User user;

  @action
  setUser(User value) async {
    user = value;
    if (user == null) {
      status = AuthStatus.logoff;
      Modular.to.navigate('/login/');
    } else {
      currentUser = await _userRepository.getUser(user.email);
      status = AuthStatus.login;
      Modular.to.navigate('/home/');
    }
  }

  _AuthControllerBase() {
    setUser(_authRepository.getUser());
  }

  @action
  Future loginWithGoogle() async {
    user = await _authRepository.getGoogleLogin();

    var userApp = await _userRepository.getUser(user.email);

    if (userApp == null) {
      userApp = await _userRepository.createUser(
          user.email, user.displayName, user.photoURL);
    } else {
      userApp = await _userRepository.updateUser(
          user.email, user.displayName, user.photoURL, userApp.id);
    }

    currentUser = userApp;
  }

  Future logout() {
    return _authRepository.getLogout();
  }
}

enum AuthStatus { loading, login, logoff }
