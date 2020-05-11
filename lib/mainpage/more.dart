import 'package:flutter/material.dart';

class AddMore extends StatefulWidget {
  static const routeName ='/more';
  @override
  State<StatefulWidget> createState() {
    
    return _AddMoreState();
  }
}

class _AddMoreState extends State<AddMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'เพิ่มเติม',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),

      ),
body: Column(
  children: <Widget>[
        ListTile(
      title: Text('คณะ',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black54
        ),),

    ),
    ListTile(
      title: Text('สาขา/ภาควิชา',
      style: TextStyle(
        fontSize: 18,
        color: Colors.black45
      ),),
    ),
    ListTile(
      title: Text('ชั้นปี',
        style: TextStyle(
            fontSize: 18,
            color: Colors.black45
        ),),
    ),
  ],
),

    );
  }
}
