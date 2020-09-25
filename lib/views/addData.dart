import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:newlaundry/widgets/pickimage.dart';
import 'dart:io';
import 'dart:math';
import 'dart:async';
//import 'package:path/path.dart' as Path;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class AddData extends StatefulWidget {
  @override
  AddDataState createState() => AddDataState();
}

class AddDataState extends State<AddData> {
  File imageFile, file;
  String topic, detail, urlPicture;

  var imageFiles = [];
  _openGallary(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(ImageSource imageSource) async {
    var picture = await ImagePicker.pickImage(source: imageSource);
    setState(() {
      imageFile = picture;
      this.imageFiles.add(picture);
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'ดำเนินการ',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Prompt',
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      'รูปภาพ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {
                      _openGallary(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    child: Text(
                      'กล้องถ่ายรูป',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {
                      _openCamera(ImageSource.camera);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
      ),
      backgroundColor: Colors.deepOrange[100],
      body: ListView(
        children: <Widget>[
          SizedBox(height: 30, width: 30),
          Container(
            padding: EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Row(
                    children: imageFiles
                        .map(
                          (url) => new InkWell(
                            child: Image.file(url, height: 100, width: 100),
                            onTap: () {
                              // var index = imageFiles.indexOf(url);
                              //     _settingModalBottomSheet(context, index);
                            },
                          ),
                        )
                        .toList()),
                Column(
                  children: [
                    InkWell(
                      child: Image.asset('image/addImage.png',
                          alignment: Alignment.center, height: 90, width: 90),
                      onTap: () {
                        if (imageFiles.length > 0) {
                          print(imageFiles);
                        } else {
                          _showChoiceDialog(context);
                        }
                      },
                    ),
                  ],
                )
              ],
            ),
          ), // finish PickImage part
// this part input infor store
          SizedBox(height: 30, width: 30),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                TextField(
                  onChanged: (String string) {
                    topic = string.trim();
                    print('insert topic done');
                  },
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Topic',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Prompt',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.shopping_basket,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30, width: 30),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                TextField(
                  onChanged: (String string) {
                    detail = string.trim();
                    print('insert detail done');
                  },
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Detaill',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Prompt',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.phone_iphone,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 120,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        padding: EdgeInsets.all(10),
                        color: Colors.redAccent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'แก้ไข',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Prompt',
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Container(
                      width: 120,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          //print('!!!! object is done !!!!');
                          uploadPicToStorage();

                          //picimage.currentState.uploadPicToStorage();
                          //uploae();
                        },
                        padding: EdgeInsets.all(10),
                        color: Colors.redAccent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'บันทึก',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Prompt',
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // void _settingModalBottomSheet(context, index) {
  //   print(index);
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return Container(
  //           child: new Wrap(
  //             children: <Widget>[
  //               new ListTile(
  //                   leading: new Icon(Icons.remove_red_eye),
  //                   title: new Text(
  //                     'ดู',
  //                     style: TextStyle(
  //                         color: Colors.black,
  //                         fontFamily: 'Prompt',
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.w300),
  //                   ),
  //                   onTap: () => {}),
  //               new ListTile(
  //                   leading: new Icon(Icons.remove_circle),
  //                   title: new Text(
  //                     'ลบ',
  //                     style: TextStyle(
  //                         color: Colors.black,
  //                         fontFamily: 'Prompt',
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.w300),
  //                   ),
  //                   onTap: () {
  //                     setState(() {
  //                       imageFiles.removeAt(index);
  //                       Navigator.of(context).pop();
  //                       deleteImage(urlPicture);
  //                     });
  //                   }),
  //             ],
  //           ),
  //         );
  //       });
  // }

  Future<void> uploadPicToStorage() async {
    Random random = Random();
    int i = random.nextInt(100000);

    FirebaseStorage firebaseStorage = FirebaseStorage.instance;
    StorageReference storageReference =
        firebaseStorage.ref().child('NewsPhoto/NewPhoto$i.jpg');
    StorageUploadTask storageUploadTask = storageReference.putFile(imageFile);

    urlPicture =
        await (await storageUploadTask.onComplete).ref.getDownloadURL();
    print('urlPicture is = $urlPicture');
    insertinformation();
  }

  Future<void> insertinformation() async {
    final firestore = Firestore.instance;
    // Firestore firestore = Firestore.instance;

    Map<String, dynamic> map = Map();
    map['Topic'] = topic;
    map['Detail'] = detail;
    map['urlPicture'] = urlPicture;
    //await Firebase.initializeApp();
    await firestore.collection('Posts').document().setData(map).then((value) {
      print('insert Successfully');
    });
  }

  // Future<void> deleteImage(String urlPicture) async {
  //   var fileUrl = Uri.decodeFull(Path.basename(urlPicture))
  //       .replaceAll(new RegExp(r'(\?alt).*'), '');

  //   final StorageReference firebaseStorageRef =
  //       FirebaseStorage.instance.ref().child(fileUrl);
  //   await firebaseStorageRef.delete();
  //   print('Successfully deleted $urlPicture from storage');
  // }
}
