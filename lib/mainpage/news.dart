import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kmutt_news/tab/dataNews.dart';

class News extends StatefulWidget {
  static const routeName = '/news';
  @override
  State<StatefulWidget> createState() {
    return _NewsState();
  }
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'KMUTT NEWS',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontStyle: FontStyle.italic),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Search',
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () async {
              final String selected =
                  await showSearch<String>(context: context, delegate: null);
            },
          ),
        ],
      ),
      // -----------------------------------------Tabbar View----------------------------------------------------------
      body: DefaultTabController(
        length: 2,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: 'ข่าวล่าสุด',
                    ),
                    Tab(text: 'ข่าวสารเป็นที่นิยม'),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    DataNews(),
                    DataNews(),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
