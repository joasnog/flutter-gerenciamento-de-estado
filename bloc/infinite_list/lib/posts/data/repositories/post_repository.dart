import 'dart:convert';

import 'package:infinite_list/posts/data/data_providers/post_data_provider.dart';
import 'package:infinite_list/posts/data/models/post.dart';

class PostRepository {
  final PostsDataProvider _postsDataProvider;

  const PostRepository(this._postsDataProvider);

  Future<List<Post>> fetchPosts([int startIndex = 0]) async {
    try {
      final rawData = await _postsDataProvider.readPostsData(startIndex);
      final body = json.decode(rawData) as List;

      return body.map((data) => Post.fromJson(data)).toList();
    } catch (error) {
      throw Exception(error.toString());
    }
  }
}
