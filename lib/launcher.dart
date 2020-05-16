

import 'dart:convert';



import 'package:flutter/material.dart';
import 'package:kmutt_news/mainpage/activies.dart';
import 'package:kmutt_news/mainpage/follow.dart';
import 'package:kmutt_news/mainpage/more.dart';
import 'package:kmutt_news/mainpage/news.dart';

import 'models/character_data.dart';

class Launcher extends StatefulWidget {
  static const routeName = '/';
  @override
  State<StatefulWidget> createState() {
    return _LauncherState();
  }
}

class _LauncherState extends State<Launcher> {
  int _selectedIndex = 0;
  List<Widget> _pageWidget = <Widget>[
    News(),
    Activities(),
    Follow(),
    AddMore()
  ];
  List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.description),
      title: Text('ข่าว'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.calendar_today),
      title: Text('กิจกรรม'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_circle_outline),
      title: Text('ติดตาม'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.view_module),
      title: Text('เพิ่มเติม'),
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
@override
void initState() {
super.initState();
_loadCharacterData();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black38,
        onTap: _onItemTapped,
      ),
    );
  }
Future _loadCharacterData() async {
  String data = await DefaultAssetBundle.of(context)
      .loadString("assets/json/character.json");
  final parsed = json.decode(data).cast<Map<String, dynamic>>();

  final jsonResult = parsed
      .map<CharacterData>((json) => CharacterData.fromJson(json))
      .toList();

  print(jsonResult[0].name);
  print(jsonResult[1].name);
  print(jsonResult[0].description);
  print(jsonResult[1].description);

  return parsed;
}
  
}
