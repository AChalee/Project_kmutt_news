import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:firebase_storage/firebase_storage.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'launcher.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home <<<<< ตรงนี้เลยย
      theme: ThemeData(
        primaryColor: Colors.orange,
//        accentColor: Colors.purple,
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.orange)),
      ),
      title: 'First Flutter App',
      initialRoute: '/', // สามารถใช้ home แทนได้
      routes: {
        Launcher.routeName: (context) => Launcher(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get json => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
