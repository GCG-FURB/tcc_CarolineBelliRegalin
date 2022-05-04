class Response {
  int id;
  String imageUrl;
  String description;
  int exerciseId;
  bool isCorrect;
  int matchResponseId;

  Response(
      {this.id,
      this.imageUrl,
      this.description,
      this.exerciseId,
      this.isCorrect,
      this.matchResponseId});

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
        id: json['id'],
        exerciseId: json['exercise_id'],
        description: json['description'],
        imageUrl: json['image_url'],
        isCorrect: json['is_correct'],
        matchResponseId: json['match_response_id']);
  }
}
