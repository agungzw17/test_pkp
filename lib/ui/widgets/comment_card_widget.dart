part of 'widgets.dart';

class CommentCardWidget extends StatelessWidget {
  CommentCardWidget({Key? key, required this.commentModel}) : super(key: key);

  CommentModel commentModel;

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text("id : ${commentModel.id}"),
          Container(
            margin: EdgeInsets.only(top: heightScreen * 0.01),
            child: Text("body : ${commentModel.body}"),
          ),
          Container(
              margin: EdgeInsets.only(top: heightScreen * 0.01),
              child: Text("postId : ${commentModel.postId}")),
        ],
      ),
    );
  }
}
