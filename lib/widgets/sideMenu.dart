import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kmutt_news/views/following.dart';
import 'package:kmutt_news/views/save.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'เกี่ยวกับผู้ใช้',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            accountEmail: null,
          ),
//          ListTile(
//            leading: Icon(Icons.lock),
//            title: Text('เข้าสู่ระบบ',style: TextStyle(fontSize: 17),),
//            onTap: (){
//              showDialog<String>(
//                  context: context,
//              builder: (BuildContext context)=>SimpleDialog(
//                title: Text('Log in'),
//                children: <Widget>[
//                 buid
//
//
//                ],
//              ),),
//
//            },
//
//          ),

          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text(
              'บันทึก',
              style: TextStyle(fontSize: 17),
            ),
            onTap: () {
              Navigator.pushNamed(context, Save.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text(
              'กำลังติดตาม',
              style: TextStyle(fontSize: 17),
            ),
            onTap: () {
              Navigator.pushNamed(context, Following.routeName);
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
