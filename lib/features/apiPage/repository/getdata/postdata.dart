import 'dart:convert';

import 'package:learnbloc/features/apiPage/repository/model/postmodel.dart';
import 'package:http/http.dart' as http;

class apipostdata {
  static Future<List<Post>> fetchData() async {
    var client = http.Client();
    var response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    List result = jsonDecode(response.body);
    List<Post> data = [];
    for (int i = 0; i < result.length; i++) {
      Post _post = Post.fromMap(result[i] as Map<String, dynamic>);
      data.add(_post);
    }
    // print(result);
    return data;
  }
}
