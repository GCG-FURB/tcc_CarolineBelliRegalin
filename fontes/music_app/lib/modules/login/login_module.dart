import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/login/login_controller.dart';
import 'package:music_app/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => LoginController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => LoginPage()),
      ];
}
