import 'package:flutter/material.dart';
import 'package:kmutt_news/tab/sideMenu.dart';
import 'package:kmutt_news/tab/tabbarAct.dart';


class Activities extends StatefulWidget {
  static const routeName ='/actitivities';
  @override
  State<StatefulWidget> createState() {

    return _ActivitiesState();
  }
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'กิจกรรม',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              icon: const Icon(Icons.menu,color: Colors.white,),
              onPressed: (){Scaffold.of(context).openDrawer();},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
      IconButton(
            icon: Icon(Icons.notifications,color: Colors.white,), onPressed: () {  },
          ),
          // IconButton (
          //   tooltip: 'Search',
          //   icon: const Icon(Icons.search,color: Colors.white,),
          //   onPressed: () async{
          //     final selected = await showSearch<String>
          //       (context: context,
          //         delegate: null);
          //   },
          // ),

        ],
      ),
      body: TabBarAct(),
      drawer: SideMenu(),


    );
  }
}


