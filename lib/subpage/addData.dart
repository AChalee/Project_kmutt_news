import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  static const routeName = '/addData';
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('data'),
      ),
    );
  }
}
