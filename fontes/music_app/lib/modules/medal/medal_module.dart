import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/medal/views/medal_page.dart';

class MedalModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (_, __) => MedalPage())];
}
