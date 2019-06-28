import 'package:flutter/material.dart';
import '../demo/navigation_demo.dart';
import '../demo/view_demo.dart';
import '../demo/bottom_navigation_demo.dart';
import '../demo/drawer_demo.dart';
import '../demo/listview_demo.dart';
import '../demo/basic_demo.dart';
import '../demo/layout_demo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  _handleSearchButton() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Page(title: 'search')
    ));
  }
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('网易云音乐~'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: _handleSearchButton
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorWeight: 1.0,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()),
    );
  }
}


