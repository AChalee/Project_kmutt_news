import 'dart:core';
import 'dart:io';

// import 'package:dropdownfield/dropdownfield.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  File image;
  double _height = 0;

  Future _getImage() async {}

  @override
  Widget build(BuildContext context) {
    var expanded = Expanded;
    return Scaffold(
      appBar: AppBar(
        title: new Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: Form(
                    child: ListView(
              padding: EdgeInsets.all(8.0),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'หัวข้อสาร/กิจกรรม',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 8.0, top: _height),
                        border: OutlineInputBorder(),
                        labelText: 'รายละเอียด'),
                  ),
                )
              ],
            ))),
          ],
        ),
      ),
    );
  }
}
