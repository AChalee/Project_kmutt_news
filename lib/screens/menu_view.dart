import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:kmutt_news/constants.dart';
import 'package:kmutt_news/widgets/category_card.dart';
// import 'package:kmutt_news/constants.dart';
// import 'package:image/image.dart';

class AddMore extends StatefulWidget {
  static const routeName = '/more';
  @override
  State<StatefulWidget> createState() {
    return _AddMoreState();
  }
}

class _AddMoreState extends State<AddMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text(
            'KMUTT NEWS',
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Prompt',
                color: Colors.white,
                fontStyle: FontStyle.italic),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: .85,
            crossAxisSpacing: 20,
            mainAxisSpacing: 50,
            children: <Widget>[
              CategoryCard(
                title: "Login",
                imageSrc: "assets/icons/password.png",
              ),
              CategoryCard(
                title: "Save",
                imageSrc: "assets/icons/bookmark.png",
              ),
              CategoryCard(
                title: "Public \n Relations",
                imageSrc: "assets/icons/speaker.png",
              ),
              CategoryCard(
                title: "Setting",
                imageSrc: "assets/icons/gear.png",
              ),
            ],
          ),
        ));
  }
}
