import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/narrative/views/narrative_page.dart';

import 'controller/narrative_controller.dart';

class NarrativeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => NarrativeController()),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (_, __) => const NarrativePage())];
}
