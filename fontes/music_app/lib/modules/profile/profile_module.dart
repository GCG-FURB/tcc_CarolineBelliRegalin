import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/profile/views/profile_page.dart';

import 'controller/profile_controller.dart';

class ProfileModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => ProfileController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (_, __) => ProfilePage())];
}
