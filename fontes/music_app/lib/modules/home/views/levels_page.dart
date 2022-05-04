import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/home/controller/levels_controller.dart';
import 'package:music_app/widgets/default_circular_progress_indicator.dart';
import 'package:music_app/widgets/level_progress_indicator_widget.dart';

class LevelsPage extends StatefulWidget {
  @override
  _LevelsPageState createState() => _LevelsPageState();
}

class _LevelsPageState extends State<LevelsPage> {
  final controller = Modular.get<LevelsController>();

  @override
  void initState() {
    controller.getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Observer(
        builder: (_) {
          if (controller.listSession.isEmpty) {
            return Container(
              child: Center(child: DefaultCircularProgressIndicatorWidget()),
            );
          }

          return ListView.builder(
            itemCount: controller.listSession.length,
            itemBuilder: (_, index) {
              return Wrap(
                  alignment: WrapAlignment.center,
                  children: this.buildLevels(controller.listSession[index]));
            },
          );
        },
      ),
    );
  }

  buildLevels(session) {
    List<LevelProgressIndicatorWidget> elements =
        <LevelProgressIndicatorWidget>[];

    for (var level in session.levels) {
      elements.add(
        LevelProgressIndicatorWidget(level: level),
      );
    }

    var result = [
      ...[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Text(
                session.title,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
      ...elements
    ];

    return result;
  }
}
