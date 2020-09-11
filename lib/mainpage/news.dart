import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kmutt_news/models/viewdata_news.dart';

import 'package:kmutt_news/tab/sideMenu.dart';
import 'package:kmutt_news/tab/tabbarNews.dart';




class News extends StatefulWidget {
  static const routeName = '/news';
  @override
  State<StatefulWidget> createState() {
    
    return _NewsState();
  }
}

class _NewsState extends State<News> {

   @override
void initState() {
super.initState();
_loadViewData();
  }

@override 
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: new Text(
          'ข่าวสาร',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              icon: const Icon(Icons.menu,color: Colors.white,),
              onPressed: (){Scaffold.of(context).openDrawer();},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications,color: Colors.white,), onPressed: () {  },
          ),
          // IconButton (
          //   tooltip: 'Search',
          //   icon: const Icon(Icons.search,color: Colors.white,),
          //   onPressed: () async{
          //     final String selected = await showSearch<String>
          //       (context: context,
          //         delegate: null);
          //   },
          // ),

        ],
      ),
      body: TabBarNews(),
      drawer: SideMenu(),
    );
  }
  Future _loadViewData() async {
  String data = await DefaultAssetBundle.of(context)
      .loadString("assets/json/newsdata.json");
  final parsed = json.decode(data).cast<Map<String, dynamic>>();

  final jsonResult = parsed
      .map<ViewData>((json) => ViewData.fromJson(json))
      .toList();

  print(jsonResult[0].id);
  print(jsonResult[0].title);
  print(jsonResult[0].detail);
  print("-------------------------------------------------------------------------------------");
  print(jsonResult[1].id);
  print(jsonResult[1].title);
  print(jsonResult[1].detail);
  print("-------------------------------------------------------------------------------------");
  print(jsonResult[2].id);
  print(jsonResult[2].title);
  print(jsonResult[2].detail);
  print("-------------------------------------------------------------------------------------");
  return parsed;
}
  
}