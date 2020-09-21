import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kmutt_news/views/addData.dart';

import 'package:kmutt_news/widgets/dataNews.dart';

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
              fontSize: 24,
              fontFamily: 'Prompt',
              color: Colors.white,
              fontStyle: FontStyle.italic),
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
            onPressed: () {
              print('sreach');
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
                  indicatorWeight: 3,
                  indicatorColor: Colors.orange,
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                        child: Text('ข่าวล่าสุด',
                            style:
                                TextStyle(fontSize: 17, fontFamily: 'Prompt'))),
                    Tab(
                        child: Text(
                      'ข่าวสารเป็นที่นิยม',
                      style: TextStyle(fontSize: 17, fontFamily: 'Prompt'),
                    )),
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
      // --------------------------------------------add text------------------------------------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddData()));
        },
        child: Icon(Icons.border_color),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
