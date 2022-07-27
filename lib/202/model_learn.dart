import 'package:flutter/material.dart';
class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;

  static fromJson(e) {}
  
}
class PostModel2 {
  int userId;
  int id;
  String title;
  String body;
  PostModel2(this.body,this.id,this.title,this.userId);
}
class PostModel3 {
 final int userId;
final  int id;
 final String title;
 final String body;
  PostModel3(this.body,this.id,this.title,this.userId);
}
class PostModel8{
  final int? userId;
final  int? id;
 final String? title;
 final String? body;

  PostModel8(this.userId, this.id, this.title, this.body);
}