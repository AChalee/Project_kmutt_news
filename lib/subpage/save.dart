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
    );
  }
}
