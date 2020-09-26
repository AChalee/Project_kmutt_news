import 'package:flutter/material.dart';
import 'package:kmutt_news/views/login_tab_view.dart';
import 'package:kmutt_news/views/register_tab_view.dart';

class Login extends StatelessWidget {
  static const routeName = '/login';
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
                        child: Text('เข้าสู่ระบบ',
                            style:
                                TextStyle(fontSize: 17, fontFamily: 'Prompt'))),
                    Tab(
                        child: Text(
                      'ลงทะเบียน',
                      style: TextStyle(fontSize: 17, fontFamily: 'Prompt'),
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    LoginTabView(),
                    RegisterTabView(),
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
