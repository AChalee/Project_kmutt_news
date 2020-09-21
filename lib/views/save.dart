import 'package:flutter/material.dart';

class Save extends StatefulWidget {
  static const routeName = '/save';
  @override
  State<StatefulWidget> createState() {
   
    return _SaveState();
  }
}

class _SaveState extends State<Save> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'บันทึก',
          style: TextStyle(fontSize: 24, color: Colors.white),
          
        ),
      ),
       body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
            color: Colors.orange[400],
            elevation : 10.0,
            child: Container(
              height:100,
              child :Row(
                children: <Widget>[
                  Expanded(
                    child: Text('ข่าว'))
                ],
              )
            ),
          ),
          Card(
            color: Colors.orange[300],
            elevation : 10.0,
            child: Container(
              height:100,
              child :Row(
                children: <Widget>[
                  Expanded(
                    child: Text('ข่าว'))
                ],
              )
            ),
          ),
          Card(
            color: Colors.orange[200],
            elevation : 10.0,
            child: Container(
              height:100,
              child :Row(
                children: <Widget>[
                  Expanded(
                    child: Text('ข่าว'))
                ],
              )
            ),
          ),
          Card(
            color: Colors.orange[100],
            elevation : 10.0,
            child: Container(
              height:100,
              child :Row(
                children: <Widget>[
                  Expanded(
                    child: Text('ข่าว'))
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
