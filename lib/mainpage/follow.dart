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
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('page'),
            color: Colors.orange[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('page'),
            color: Colors.orange[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('page'),
            color: Colors.orange[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('page'),
            color: Colors.orange[600],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('page'),
            color: Colors.orange[700],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('page'),
            color: Colors.orange[800],
          ),
        ],
      ),
    ),
  ],
)
    );
  }
}
