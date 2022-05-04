import 'package:music_app/modules/exercise/models/response.class.dart';

class Exercise {
  int id;
  int responseType;
  String imageUrl;
  String audioUrl;
  String description;
  String helpDescription;
  int levelID;
  String feedbackCorrectDescription;
  String feedbackIncorrectDescription;
  List<Response> responses;

  Exercise({
    this.id,
    this.responseType,
    this.imageUrl,
    this.audioUrl,
    this.description,
    this.helpDescription,
    this.levelID,
    this.feedbackCorrectDescription,
    this.feedbackIncorrectDescription,
    this.responses,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    List<Response> listResponses = [];

    for (var json in (json['responses']) as List) {
      listResponses.add(Response.fromJson(json));
    }

    return Exercise(
      id: json['id'],
      responseType: json['response_type'],
      imageUrl: json['image_url'],
      audioUrl: json['audio_url'],
      description: json['description'],
      helpDescription: json['description'],
      levelID: json['level_id'],
      feedbackCorrectDescription: json['feedback_correct_description'],
      feedbackIncorrectDescription: json['feedback_incorrect_description'],
      responses: listResponses,
    );
  }
}
