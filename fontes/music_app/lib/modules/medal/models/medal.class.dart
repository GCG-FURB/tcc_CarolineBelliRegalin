class Medal {
  int id;
  String imageUrl;
  String description;
  String title;
  bool isEnabled;
  String levelTitle;

  Medal(
      {this.id,
      this.imageUrl,
      this.description,
      this.title,
      this.isEnabled,
      this.levelTitle});

  factory Medal.fromJson(Map<String, dynamic> json) {
    return Medal(
      id: json['id'],
      title: json['title'],
      imageUrl: json['image_url'],
      description: json['description'],
      isEnabled: json['user_medals'].length > 0,
      levelTitle: json['levels'].length > 0 ? json['levels'][0]['title'] : '',
    );
  }
}
