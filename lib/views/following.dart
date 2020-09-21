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
      body: CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("page"),
            color: Colors.orange[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('page'),
            color: Colors.orange[200],
          ),
          
        ],
      ),
    ),
  ],
)
  
    );
  }
}
