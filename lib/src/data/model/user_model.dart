// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    this.userid,
    this.username,
    this.password,
    this.email,
  });

  String? userid;
  String? username;
  String? password;
  String? email;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userid: json["userid"],
        username: json["username"],
        password: json["password"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userid,
        "username": username,
        "password": password,
        "email": email,
      };
}
