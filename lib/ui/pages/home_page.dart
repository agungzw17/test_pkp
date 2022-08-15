part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Comment Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: heightScreen * 0.05),
              child: BlocBuilder<CommentBloc, CommentState>(
                  builder: (context, state) {
                if (state is CommentInitial) {
                  return Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: const Center(
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  );
                } else {
                  CommentLoaded commentLoaded = state as CommentLoaded;

                  return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: commentLoaded.comments!.length,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Container(
                            child: Column(
                              children: <Widget>[
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                CommentCardWidget(
                                  commentModel: commentLoaded.comments![index],
                                ),
                              ],
                            ),
                          );
                        } else if (index ==
                            commentLoaded.comments!.length - 1) {
                          return Container(
                            child: Column(
                              children: <Widget>[
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                CommentCardWidget(
                                  commentModel: commentLoaded.comments![index],
                                ),
                                const Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                              ],
                            ),
                          );
                        } else {
                          return Column(
                            children: <Widget>[
                              const Divider(
                                color: Colors.black,
                                thickness: 1,
                              ),
                              CommentCardWidget(
                                commentModel: commentLoaded.comments![index],
                              ),
                            ],
                          );
                        }
                      });
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
