import 'level.class.dart';

class Session {
  int id;
  String title;
  List<Level> levels;

  Session({this.id, this.title, this.levels});

  factory Session.fromJson(Map<String, dynamic> json) {
    List<Level> levels = [];

    for (var level in json['levels']) {
      levels.add(Level.fromJson(level));
    }

    return Session(id: json['id'], title: json['title'], levels: levels);
  }
}
