import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:music_app/modules/exercise/exercise_module.dart';
import 'package:music_app/modules/medal/medal_module.dart';
import 'package:music_app/modules/narrative/narrative_module.dart';
import 'package:music_app/modules/profile/profile_module.dart';
import 'package:music_app/modules/shared/auth/auth_controller.dart';
import 'package:music_app/modules/shared/auth/repositories/auth_repository.dart';
import 'package:music_app/modules/shared/auth/repositories/auth_repository_interface.dart';
import 'package:music_app/splash_page.dart';

import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/shared/auth/repositories/user_repository.dart';

class AppModule extends Module {
  // sistema de injecao de dependencia ->  os objeto que são passados aqui são injetados globalmente
  @override
  List<Bind> get binds => [
        Bind((i) =>
            HasuraConnect('https://musicando-app.herokuapp.com/v1/graphql')),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind<UserRepository>((i) => UserRepository(i())),
        Bind((i) => AuthController()),
      ];

  // dois tipos de rota:
  // - rota de modulo
  // - rota de "criança"
  // sistema de rotas
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/exercise', module: ExerciseModule()),
        ModuleRoute('/medal', module: MedalModule()),
        ModuleRoute('/profile', module: ProfileModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/narrative', module: NarrativeModule()),
        ModuleRoute('/login',
            module: LoginModule(), transition: TransitionType.noTransition),
      ];
}
