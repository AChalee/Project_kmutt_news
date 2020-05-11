import 'package:flutter/material.dart';

class Follow extends StatefulWidget {
  static const routeName = '/follow';
  @override
  State<StatefulWidget> createState() {
  
    return _FollowState();
  }
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'ติดตาม',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
