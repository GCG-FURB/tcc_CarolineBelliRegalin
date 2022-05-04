import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/medal/controllers/medals_controller.dart';
import 'package:music_app/widgets/image_description_widget.dart';
import 'package:music_app/widgets/default_circular_progress_indicator.dart';

class MedalPage extends StatefulWidget {
  @override
  _MedalPageState createState() => _MedalPageState();
}

class _MedalPageState extends State<MedalPage> {
  final controller = Modular.get<MedalsController>();

  @override
  Widget build(BuildContext context) {
    return Container(child: Observer(
      builder: (_) {
        final colors = [
          Color(0xffd751a7),
          Color(0xffff8d69),
          Color(0xffffc25b)
        ];

        var colorIndex = 0;

        if (controller.listMedals.isEmpty) {
          return Container(
            child: Center(child: DefaultCircularProgressIndicatorWidget()),
          );
        }

        return Column(
          children: [
            Expanded(
              child: GridView.count(
                primary: false,
                crossAxisCount: 2,
                padding: const EdgeInsets.all(15),
                children: List.generate(controller.listMedals.length, (index) {
                  colorIndex++;

                  if (colorIndex > colors.length - 1) {
                    colorIndex = 0;
                  }

                  if (controller.listMedals[index].isEnabled) {
                    return ImageDescriptionWidget(
                      description: controller.listMedals[index].description,
                      imageUrl: controller.listMedals[index].imageUrl,
                      primaryColor: colors[colorIndex],
                      secondaryColor: Colors.grey,
                    );
                  } else {
                    return ImageDescriptionWidget(
                        imageUrl: 'assets/images/medals/question.png',
                        primaryColor: Colors.grey.withOpacity(0.5),
                        secondaryColor: Colors.grey,
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title:
                                      Text("Como encontrar esse instrumento?"),
                                  content: Text(
                                      "Complete o nível ${controller.listMedals[index].levelTitle} sem errar nenhuma questão. O Musiquinho ficará muito feliz :D."),
                                );
                              });
                        });
                  }
                }),
              ),
            ),
          ],
        );
      },
    ));
  }
}
