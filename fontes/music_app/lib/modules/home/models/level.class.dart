import 'package:music_app/modules/exercise/models/exercise.class.dart';
import 'package:music_app/modules/medal/models/medal.class.dart';

class Level {
  int id;
  String imageUrl;
  String title;
  Medal medal;
  int sessionId;
  bool isEnabled;
  List<Exercise> exercises;

  Level(
      {this.id,
      this.imageUrl,
      this.title,
      this.sessionId,
      this.medal,
      this.isEnabled,
      this.exercises});

  factory Level.fromJson(Map<String, dynamic> json) {
    return Level(
        id: json['id'],
        title: json['title'],
        imageUrl: json['image_url'],
        sessionId: json['session_id'],
        medal: Medal(
          id: json['medal']['id'],
          imageUrl: json['medal']['image_url'],
          description: json['medal']['description'],
        ),
        isEnabled: json['id'] == 1 || json['user_levels'].length > 0);
  }
}
