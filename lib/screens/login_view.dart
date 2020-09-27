import 'package:flutter/material.dart';
import 'package:kmutt_news/views/login_tab_view.dart';
import 'package:kmutt_news/views/register_tab_view.dart';

class Login extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.orange[900],
          Colors.orange[800],
          Colors.orange[400]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'KMUTT NEWS',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Prompt',
                        fontSize: 28,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: DefaultTabController(
                  length: 2,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
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
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Sansita'))),
                                Tab(
                                    child: Text('ลงทะเบียน',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Sansita'))),
                              ]),
                        ),
                        Expanded(
                            child: Container(
                          child: TabBarView(children: [
                            LoginTabView(),
                            RegisterTabView(),
                          ]),
                        ))
                      ],
                    ),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
