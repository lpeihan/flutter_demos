import 'package:flutter/material.dart';
import '../models/post.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.white,
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Image.network(posts[index].imageUrl),
              SizedBox(height: 16.0),
              Text(posts[index].title,
                  style: Theme.of(context).textTheme.title),
              Text(posts[index].author,
                  style: Theme.of(context).textTheme.subhead),
              SizedBox(height: 16.0),
            ],
          ),
        );
      }
    );
  }
}