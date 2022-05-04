import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/exercise/repositories/exercise_repository.dart';
import 'package:music_app/modules/exercise/views/exercise_page.dart';
import 'package:music_app/modules/exercise/views/instrument_not_found_page.dart';
import 'package:music_app/modules/exercise/views/level_concluded_page.dart';
import 'package:music_app/modules/exercise/views/level_loss_page.dart';
import 'package:music_app/modules/exercise/views/level_medal_page.dart';
import 'package:music_app/modules/shared/auth/repositories/user_repository.dart';
import 'controllers/exercises_controller.dart';

class ExerciseModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => ExerciseRepository(i())),
        Bind.factory((i) => UserRepository(i())),
        Bind.factory((i) => ExercisesController(i(), i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => ExercisePage(level: args.data)),
        ChildRoute('/level_concluded_page',
            child: (context, args) => LevelConcludedPage(
                levelTitle: args.queryParams['levelTitle'],
                totalExercises: args.queryParams['totalExercises'],
                totalExercisesConcluded:
                    args.queryParams['totalExercisesConcluded'])),
        ChildRoute('/level_loss_page',
            child: (context, args) => LevelLossPage()),
        ChildRoute('/level_medal_page',
            child: (context, args) => LevelMedalPage(
                medalImageUrl: args.queryParams['medalImageUrl'],
                medalDescription: args.queryParams['medalDescription'],
                levelTitle: args.queryParams['levelTitle'],
                totalExercises: args.queryParams['totalExercises'],
                totalExercisesConcluded:
                    args.queryParams['totalExercisesConcluded'])),
        ChildRoute('/instrument_not_found_page',
            child: (context, args) => InstrumentNotFoundPage(
                levelTitle: args.queryParams['levelTitle'],
                totalExercises: args.queryParams['totalExercises'],
                totalExercisesConcluded:
                    args.queryParams['totalExercisesConcluded']))
      ];
}
