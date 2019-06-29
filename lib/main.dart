import 'package:flutter/material.dart';
import 'demo/state_demo.dart';
import 'demo/animation_demo.dart';
import 'demo/material_components.dart';
import 'demo/form_demo.dart';
import 'demo/just_demo.dart';
import 'demo/navigation_demo.dart';
import 'demo/sliver_demo.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
      initialRoute: '/state',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => Page(title: 'about'),
        '/sliver': (context) => SliverDemo(),
        '/just': (context) => JustDemo(),
        '/form': (context) => FormDemo(),
        '/material': (context) => MaterialComponents(),
        '/animation': (context) => AnimationDemo(),
        '/state': (context) => StateManagementDemo()
      },
    );
  }
}