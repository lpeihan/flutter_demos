import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  BottomNavigationBarDemo({Key key}) : super(key: key);

  _BottomNavigationBarDemoState createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      onTap: (index) {
        setState(() {
          this._currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore), title: Text('explore')),
        BottomNavigationBarItem(
            icon: Icon(Icons.history), title: Text('history')),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('list')),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('my')),
      ],
    );
  }
}