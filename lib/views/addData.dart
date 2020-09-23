import 'dart:core';
import 'dart:io';
//  import 'package:dropdownfield/dropdownfield.dart';
//  import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//https://www.youtube.com/watch?v=t4QJoivDNqg
//https://github.com/JulianCurrie/CwC_Flutter/blob/firebase_series/lib/screens/food_form.dart

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

// class _AddDataState extends State<AddData> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   List _subingredients = [];
//   //Food _currentFood;

// // @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       key: _scaffoldKey,
// //       appBar: AppBar(title: Text('Food Form')),
// //       body: SingleChildScrollView(
// //         child: Form(
// //           key: _formKey,
// //           autovalidate: true,
// //           child: Column(children: <Widget>[
// //             _showImage(),
// //             SizedBox(height: 16),
// //             Text(
// //               widget.isUpdating ? "Edit Food" : "Create Food",
// //               textAlign: TextAlign.center,
// //               style: TextStyle(fontSize: 30),
// //             ),
// //             SizedBox(height: 16),
// //             _imageFile == null && _imageUrl == null
// //                 ? ButtonTheme(
// //                     child: RaisedButton(
// //                       onPressed: () => _getLocalImage(),
// //                       child: Text(
// //                         'Add Image',
// //                         style: TextStyle(color: Colors.white),
// //                       ),
// //                     ),
// //                   )

//   @override
//   Widget _buildNameField() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Topic'),
//       initialValue: _currentFood.name,
//       keyboardType: TextInputType.text,
//       style: TextStyle(fontSize: 20),
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'Name is required';
//         }

//         if (value.length < 3 || value.length > 20) {
//           return 'Name must be more than 3 and less than 20';
//         }

//         return null;
//       },
//       onSaved: (String value) {
//      //   _currentFood.name = value;
//       },
//     );
//   }

//   Widget _buildCategoryField() {
//     return TextFormField(
//       decoration: InputDecoration(labelText: 'Category'),
//       initialValue: _currentFood.category,
//       keyboardType: TextInputType.text,
//       style: TextStyle(fontSize: 20),
//       validator: (String value) {
//         if (value.isEmpty) {
//           return 'Category is required';
//         }

//         if (value.length < 3 || value.length > 20) {
//           return 'Category must be more than 3 and less than 20';
//         }

//         return null;
//       },
//       onSaved: (String value) {
//         // _currentFood.category = value;
//       },
//     );
//   }

//   // _buildSubingredientField() {
//   //   return SizedBox(
//   //     width: 200,
//   //     child: TextField(
//   //       controller: subingredientController,
//   //       keyboardType: TextInputType.text,
//   //       decoration: InputDecoration(labelText: 'Subingredient'),
//   //       style: TextStyle(fontSize: 20),
//   //     ),
//   //   );
//   // }
// }

////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////

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
