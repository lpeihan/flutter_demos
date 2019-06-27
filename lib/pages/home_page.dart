import 'package:flutter/material.dart';
import '../demo/listview_demo.dart';
import '../demo/basic_demo.dart';
import '../demo/layout_demo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('网易云音乐'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search pressed');
              },
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorWeight: 1.0,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_florist),
              ),
              Tab(
                icon: Icon(Icons.change_history),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo()
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  'John',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text('John@qq.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://p2.music.126.net/wpahk9cQCDtdzJPE52EzJQ==/109951163271025942.jpg'),
                ),
                decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://p2.music.126.net/cTfHbDHrOJltRVfQtalwxA==/109951164163595362.jpg'),
                        colorFilter: ColorFilter.mode(
                            Colors.yellow[400].withOpacity(0.5),
                            BlendMode.hardLight))),
              ),
              ListTile(
                title: Text(
                  'Message',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.message,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text(
                  'Favorite',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text(
                  'Setting',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.settings,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBarCom()),
    );
  }
}

class BottomNavigationBarCom extends StatefulWidget {
  BottomNavigationBarCom({Key key}) : super(key: key);

  _BottomNavigationBarComState createState() => _BottomNavigationBarComState();
}

class _BottomNavigationBarComState extends State<BottomNavigationBarCom> {
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
