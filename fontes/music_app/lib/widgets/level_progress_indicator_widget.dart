import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_app/modules/home/models/level.class.dart';

class LevelProgressIndicatorWidget extends StatelessWidget {
  final Level level;

  const LevelProgressIndicatorWidget({Key key, this.level}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  level.isEnabled ? Colors.purple : Colors.grey),
              value: 120,
            ),
            height: 120.0,
            width: 120.0,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color:
                  level.isEnabled ? Colors.white : Colors.grey.withOpacity(0.1),
              image: DecorationImage(
                scale: 2.5,
                image: AssetImage(level.imageUrl),
                colorFilter: level.isEnabled
                    ? null
                    : ColorFilter.mode(
                        Colors.white.withOpacity(0.3), BlendMode.xor),
              ),
              shape: BoxShape.circle,
            ),
          ),
          onTap: () {
            _onTapExercise();
          },
        ),
        Text(level.title),
      ],
    );
  }

  void _onTapExercise() {
    if (level.isEnabled) {
      Modular.to.navigate('/exercise', arguments: level);
    }
  }
}
