import 'package:flutter/material.dart';
import 'package:kmutt_news/tab/dataNews.dart';


class TabBarNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: 'ข่าวสารเร็วๆนี้'),
                  Tab(text: 'ข่าวสารทั่วไป'),
                  Tab(text: 'ข่าวสารที่สนใจ'),
                ],),
            ),
            Expanded (
              child: Container(
                child: TabBarView(children:[
                  DataNews(),
                  DataNews(),
                  DataNews(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
