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
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0.0),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  labelText: 'เพิ่มรูปภาพ',
                  icon: Icon(Icons.add_a_photo),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ),
      ),
    );
  }
}
