import 'package:http/http.dart' as http;

class PostsDataProvider {
  final http.Client _client;

  const PostsDataProvider(this._client);

  Future<String> readPostsData([int startIndex = 0, int postLimit = 20]) async {
    final response = await _client.get(
      Uri.https(
        'jsonplaceholder.typicode.com',
        '/posts',
        {
          '_start': '$startIndex',
          '_limit': '$postLimit',
        },
      ),
    );

    if (response.statusCode == 200) {
      return response.body;
    }

    throw Exception('Error Fetching Posts');
  }
}
