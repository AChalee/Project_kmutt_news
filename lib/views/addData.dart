import 'dart:core';
import 'dart:io';

// import 'package:dropdownfield/dropdownfield.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  File _image;

  String name;

  Future _getImage() async {
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
      print('_image: $_image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(top: 17, right: 25),
                child: Text('โพสต์',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Prompt',
                        color: Colors.white)),
              ),
            ),
          ],
        ),
// ------------------------------------add image-----------------------------------------------
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: 180,
                  height: 160,
                  child: Stack(
                    children: <Widget>[
                      Card(
                        child: InkWell(
                          onTap: _getImage,
                        ),
                      ),
                      Center(
                        child: IconButton(
                            icon: Icon(Icons.add_a_photo), onPressed: () {}),
                      )
                    ],
                  ),
                ),
                //  --------------------------------------------add data----------------------------------------------
                Container(
                  height: 50,
                  width: 300,
                  // padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      hintText: 'ข่าวสาร/กิจกรรม',
                    ),
                    style: TextStyle(),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
