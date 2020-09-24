import 'dart:core';
//import 'dart:html';
//import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:firebase_core/firebase_core.dart';

class AddData extends StatefulWidget {
  @override
  AddDataState createState() => AddDataState();
}

class AddDataState extends State<AddData> {
  //File file;
  String topic, detail, urlPicture;

  //Method

//รูปไม่มา
  Widget showImage() {
    return Container(
      padding: EdgeInsets.all(20.0),
      //color: Colors.pink,
      width: MediaQuery.of(context).size.width * 0.2, //ใช้ความยาวของจอ = รูปภาพ
      height: MediaQuery.of(context).size.height * 0.2,
      child: Image.asset('image/addImage.png'),
    );
  }

  Widget cameraButton() {
    return IconButton(
      icon: Icon(
        Icons.add_a_photo,
        size: 36.0,
        color: Colors.pink,
      ),
      onPressed: () {
        //   chooseImage(ImageSource.camera);
      },
    );
  }

//กล้องถ่ายรูป             //ถ้ากดกล้อง มันจะ call หาตัวนี้
  // Future<void> chooseImage(ImageSource imageSource) async {
  //   try {
  //     var object = await ImagePicker.pickImage(
  //       source: imageSource,
  //       maxWidth: 800.0,
  //       maxHeight: 800.0,
  //     );

  //     setState(() {
  //       file = object;
  //     });
  //   } catch (e) {}
  // }

  Widget galleryButton() {
    return IconButton(
      icon: Icon(
        Icons.add_photo_alternate,
        size: 36.0,
        color: Colors.red,
      ),
      onPressed: () {
        //   chooseImage(ImageSource.gallery)
      },
    );
  }

  Widget showButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        cameraButton(),
        galleryButton(),
      ],
    );
  }

  Widget topicForm() {
    return Container(
      //width: MediaQuery.of(context).size.width * 0.5,
      child: TextField(
        onChanged: (value) {
          detail = value.trim();
        },
        decoration: InputDecoration(
            helperText: 'ใจความสำคัญข่าว', //ข้างใต้ฟอม
            labelText: 'หัวข้อข่าว'),
      ),
    );
  }
  // maxLength: 10,

  Widget detailForm() {
    return Container(
      //width: MediaQuery.of(context).size.width * 0.5,
      child: TextField(
        onChanged: (String string) {
          topic = string.trim(); //ตัดช่องว่างหน้าหลัง
        },
        decoration: InputDecoration(
            helperText: 'รายละเอียดของข่าว', //ข้างใต้ฟอม
            labelText: 'รายละเอียด'),
      ),
    );
  }

  Widget uploadButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          //width: MediaQuery.of(context).size.width,
          child: RaisedButton.icon(
            color: Colors.deepOrange,
            onPressed: () {
              insertinformation();
              print('You click Upload');

              // if (file == null) {
              //   //เช๊คว่าเลือกรูปภ่าพยัง
              //   showAlert(
              //       'Non Choose Picture', 'Please Click Camera or Gallery');
              // } else if (
              // topic = null ||
              // topic.isEmty ||
              // detail = null ||
              // detail.isEmty) {
              //   showAlert('Have Space', 'Please Fill Every Blank');
              // }else{
              //  uploadPictureToStorage();   // ถ้าทุกอย่างครบหมด กดอัพโหลด จะ call เรียก uploadPictureToStorage();
              // }
            },
            icon: Icon(
              Icons.cloud_upload,
              color: Colors.white,
            ),
            label: Text(
              'Upload Data to firebase',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

//////////////////////////////FirebaseStrorage/////////////////////////////
  // Future<void> uploadPictureToStorage() async{
  //   Random random = Random();
  //   int i = random.nextInt(10000);

  //   //สร้าง instant ไป call เรียก
  //   FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  //   StorageReference storageReference = firebaseStorage.ref().child('NewsPhoto/i.jpg') ;// บอกว่าเก็บรูปภาพที่ไหน //มันจะทำการอ้างอิงถึงที่เก็บรูป
  //   StorageUploadTask storageUploadTask = storageReference.putFile(file);

  //   urlPicture = await (await storageUploadTask.onComplete).ref.getDownloadURL();
  //   print('urlPicture = $urlPicture');
  // }

////////////////////////////////Firestore firestore/////////////////////////////////
  Future<void> insertinformation() async {
    // ignore: deprecated_member_use
    Firestore firestore = Firestore.instance;
    //Firestore firestore = Firestore.instance;

    Map<String, dynamic> map = Map();
    map['Topic'] = topic;
    map['Detail'] = detail;
    //map['urlPicture'] = urlPicture;
    //await Firestore.initializeApp();
    // ignore: deprecated_member_use
    await firestore.collection('Posts').document().setData(map).then((value) {
      print('insert Succes');
    });
  }

//ทำงานก็ต่อเมื่อมันมี null เกิดขึ้น
  // Future<void> showAlert(String title, String message) async {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text(title),
  //           content: Text(message),
  //           actions: <Widget>[
  //             FlatButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text('OK'),
  //             ),
  //           ],
  //         );
  //       });

// Widget showContent() {
//   ////รวบรวม widget ต่างๆ โดยมันเรียงจากบนลงล่าง ใช้Column
//   return Column(
//     children: <Widget>[
//       showImage(),
//       showButton(),
//       topicForm(),
//       detailForm(),
//     ],
//   );
// }

// Widget signOutButton(){
//   return IconButton(
//     icon: Icon(Icons.exit_to_app),
//     tooltip:'Sign Out',
//     onPressed: (){
//       myAlert();
//     }
//     )

// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
      ),
      body: Container(
          child: Column(
        children: [
          showImage(),
          showButton(),
          topicForm(),
          detailForm(),
          uploadButton(),
        ],
      )),
    );
  }
}
