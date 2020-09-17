import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 30, 20, 0.0),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  labelText: 'เพิ่มรูปภาพ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  labelText: 'ข่าวสาร/กิจกรรม',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            )
          ],
        ),
      ),
    );
  }
}
