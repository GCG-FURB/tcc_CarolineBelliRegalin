import 'package:flutter_modular/flutter_modular.dart';
import 'package:testedomodular/modules/auth/repositories/login_repository.dart';
import 'package:testedomodular/modules/auth/views/login_page.dart';
import 'blocs/login_bloc.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => LoginRepository()),
        Bind.singleton((i) => LoginBloc(i())),
      ];

  // factory: sempre que chamar a construção, vai criar um novo objeto
  // instance: firebase
  // lazySingleton: iniciado quando vc chama a primeira vez
  // e sigleton: iniciado junto com o módulo
  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (_, __) => const LoginPage())];
}
