part of "comment_bloc.dart";

abstract class CommentState{
  const CommentState();
}

class CommentInitial extends CommentState {

}

class CommentLoaded extends CommentState {
  final List<CommentModel>? comments;

  const CommentLoaded({this.comments});
}