import 'package:flutter/material.dart';
import 'user_drawer.dart';

class NeteasePage extends StatefulWidget {
  NeteasePage({Key key}) : super(key: key);

  _NeteasePageState createState() => _NeteasePageState();
}

class _NeteasePageState extends State<NeteasePage> with SingleTickerProviderStateMixin{
  TabController tabController;
  int currentIndex = 1;

  @override
  void initState() {
    super.initState();

    tabController = new TabController(
      vsync: this,
      length: 3,
      initialIndex: this.currentIndex
    );

    tabController.addListener(() {
      setState(() {
        this.currentIndex = tabController.index;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Color(0xffdd4137),
        splashColor: Color(0x22000000),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: TabBar(
            controller: this.tabController,
            indicatorWeight: 0.1,
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                child: Image.asset(this.currentIndex == 0 ? 'assets/music_active.png' : 'assets/music.png'),
              ),
              Tab(
                child: Image.asset(this.currentIndex == 1 ? 'assets/logo_active.png' : 'assets/logo.png'),
              ),
              Tab(
                child: Image.asset(this.currentIndex == 2 ? 'assets/video_active.png' : 'assets/video.png'),
              )
            ]
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: TabBarView(
          controller: this.tabController,
          children: <Widget>[
            Center(child: Icon(Icons.local_florist),),
            Discover(),
            Center(child: Icon(Icons.directions_bike),)
          ],
        ),
        drawer: UserDrawer(),
      ),
    );
  }
}

class Discover extends StatefulWidget {
  Discover({Key key}) : super(key: key);

  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = new TabController(
      vsync: this,
      length: 3,
    );

    tabController.addListener(() {
      print(tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: tabController,
          indicatorWeight: 2.0,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.only(bottom: 10),
          tabs: <Widget>[
            Tab(
              child: Text('推荐'),
            ),
            Tab(
              child: Text('排行'),
            ),
            Tab(
              child: Text('歌手'),
            )
          ],
        )
      ),
        body: TabBarView(
          controller: this.tabController,
          children: <Widget>[
            Center(child: Icon(Icons.local_florist),),
            Center(child: Icon(Icons.change_history),),
            Center(child: Icon(Icons.directions_bike),)
          ],
        ),
    );
  }
}