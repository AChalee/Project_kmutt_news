import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:kmutt_news/views/following.dart';
import 'package:kmutt_news/views/save.dart';

import 'launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home <<<<< ตรงนี้เลยย
      theme: ThemeData(
        primaryColor: Colors.orange,
//        accentColor: Colors.purple,
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.orange)),
      ),
      title: 'First Flutter App',
      initialRoute: '/', // สามารถใช้ home แทนได้
      routes: {
        Launcher.routeName: (context) => Launcher(),
        Save.routeName: (context) => Save(),
        Following.routeName: (context) => Following(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get json => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
