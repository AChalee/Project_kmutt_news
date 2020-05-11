import 'package:flutter/material.dart';

class Following extends StatefulWidget {
  static const routeName ='/following';
  @override
  State<StatefulWidget> createState() {
    
    return _FollowingState();
  }
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'กำลังติดตาม',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
