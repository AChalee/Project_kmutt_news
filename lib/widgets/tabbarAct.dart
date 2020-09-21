import 'package:flutter/material.dart';
import 'package:kmutt_news/tab/dataAct.dart';


class TabBarAct extends StatelessWidget {
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
                  Tab(text: 'กิจกรรมเร็วๆนี้'),
                  Tab(text: 'กิจกรรมทั่วไป'),
                  Tab(text: 'กิจกรรมที่สนใจ'),
                ],),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children:[
                  DataAct(),
                  DataAct(),
                  DataAct(),



                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
