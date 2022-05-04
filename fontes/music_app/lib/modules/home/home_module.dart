import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/home/repositories/session_repository.dart';
import 'package:music_app/modules/home/views/home_page.dart';
import 'package:music_app/modules/home/controller/levels_controller.dart';
import 'package:music_app/modules/medal/controllers/medals_controller.dart';
import 'package:music_app/modules/medal/repositories/medal_repository.dart';
import 'package:music_app/modules/profile/controller/profile_controller.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => SessionRepository(i())),
        Bind.factory((i) => LevelsController(i())),
        Bind.factory((i) => MedalsController(i())),
        Bind.factory((i) => MedalRepository(i())),
        Bind.factory((i) => ProfileController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (_, __) => const HomePage())];
}
