import 'dart:convert';

class User {

  final String name;
  final String email;
  final String password;

  const User({
    required this.name,
    required this.email,
    required this.password
  });

  String toJson() => 
    json.encode({
      "name": name,
      "email": email,
      "password": password
    });

  static User fromJson(String jsonStr) =>
    User(
      name: json.decode(jsonStr)["name"],
      email: json.decode(jsonStr)["email"],
      password: json.decode(jsonStr)["password"]
    );

}