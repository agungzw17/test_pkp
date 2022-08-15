part of 'models.dart';

class CommentModel {
  String? id;
  String? body;
  String? postId;

  CommentModel({this.body, this.id, this.postId});

  factory CommentModel.fromJson(Map<String,dynamic> json) {
    return CommentModel(
      id: json['id'].toString(),
      body: json['body'].toString(),
      postId: json['postId'].toString(),
    );
  }
}