import 'package:flutter/material.dart';
import '../models/post.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  PostDetail({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${post.title}'),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network(post.imageUrl),
              Container(
                padding: EdgeInsets.all(32.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('${post.title}',
                        style: Theme.of(context).textTheme.title),
                    Text('${post.author}',
                        style: Theme.of(context).textTheme.subhead),
                    SizedBox(height: 32.0),
                    Text('${post.description}',
                        style: Theme.of(context).textTheme.body1),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
