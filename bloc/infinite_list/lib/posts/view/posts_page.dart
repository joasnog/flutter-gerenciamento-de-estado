import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_list/posts/bloc/post_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:infinite_list/posts/data/data_providers/post_data_provider.dart';
import 'package:infinite_list/posts/data/repositories/post_repository.dart';
import 'package:infinite_list/posts/view/post_list.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: BlocProvider(
        create: (context) =>
            PostBloc(postRepository: PostRepository(PostsDataProvider(http.Client())))..add(PostFetched()),
        child: const PostList(),
      ),
    );
  }
}
