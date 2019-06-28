import 'package:flutter/material.dart';

class JustDemo extends StatelessWidget {
  const JustDemo({Key key}) : super(key: key);

  List<Widget> _buildList() {
    return List.generate(50, (int index) {
      return Text('Item $index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text('just'),
          ),
          body: Stack(
            children: <Widget>[
              Container(
                color: Colors.blueAccent,
                child: ListView(
                  children: this._buildList()
                ),
              ),
              Positioned(
                top: 20.0,
                right: 20.0,
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: Container(
                    color: Colors.green
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              color: Colors.red,
              child: Text('hello world'),
            ),
          )
        ),
        Positioned(
          child: Container(
            width: 50.0,
            height: 30.0,
            color: Colors.orange
          ),
          top: 20.0,
          right: 20.0
        )
      ],
    );
  }
}