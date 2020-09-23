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
  TextEditingController controller = TextEditingController();
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
  void initState() {
    super.initState();
    controller.text = 'Initial Value';
  }
  // TextField(
  //   controller: controller,
  //   onSubmitted: (value){
  //     setState(() {
  //       controller.text =value;
  //     });
  //   },
  // )

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
                //  --------------------------------------------TextEdit----------------------------------------------
              ],
            )
          ],
        ));
  }
}