import 'package:testedomodular/modules/auth/blocs/states/login_state.dart';

class LoginRepository {
  Future<bool> login(String email, String password) async {
    if (email == 'cregalin@furb.br' && password == '123') {
      return true;
    } else {
      throw Exception('Erro no login');
    }
  }
}
