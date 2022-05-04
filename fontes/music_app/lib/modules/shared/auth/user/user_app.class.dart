class UserApp {
  int id;
  String name;
  String imageUrl;
  String email;
  int points;

  UserApp({this.id, this.name, this.imageUrl, this.email, this.points});

  factory UserApp.fromJson(Map<String, dynamic> json) {
    return UserApp(
      id: json['id'],
      name: json['name'],
      imageUrl: json['image_url'],
      email: json['email'],
      points: json['points'],
    );
  }
}
