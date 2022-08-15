part of 'services.dart';

class CommentServices {
  static Future<List<CommentModel>> getListComment() async {
    var response = await http.get(Uri.parse('${apiKey}comments'));

    if (response.statusCode == 200) {
      var jsonObject = json.decode(response.body) as List;

      return jsonObject
          .map<CommentModel>((item) => CommentModel.fromJson(item))
          .toList();
    } else {
      return [];
    }
  }
}
