import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class RegisterTabView extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  String nameString, emailString, passwordString;

  Widget registerButton() {
    return RaisedButton(
      child: Text('Register'),
      onPressed: () {
        print('You Click Upload');
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print(
              'name = $nameString, email =$emailString, password = $passwordString');
          registerThread(); //ถ้าเมื่อไรที่ได้ค่า name email pass ให้ไปทำงานที่  registerThread()
          print(nameString + emailString + passwordString);
        }
      },
    );
  }

  //firebase
  Future<void> registerThread() async {
    // await Firebase.initializeApp();
    print('RegisterThread');

    //สร้าง instance ชื่อ firebaseAuth เพื่อให้มันไป call method ที่อยู่ใน plugin หรือ library มาทำงาน
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance; //firebase
    await firebaseAuth //await คือต้องทำงานให้สำเร็จ

        .createUserWithEmailAndPassword(
            email: emailString, password: passwordString)
        .then((response) {
      //ถ้าไปสร้างใน au สำเร็จแล้วให้ return response กลับมา print...
      print('Register Success for Email = $emailString');
      //   setupDisplayName(); //เมื่อไรที่สมัครสมาชิกสำเร็จ ให้ call setupDisplayName ให้ทำงาน
    }).catchError((response) {
      print('เข้า EROR');
      //catchError ทำต่อเมื่อ เราทำผิดกฎการสมัคร
      String title = response.code; //เอาresponse มาแกะ ว่าผิดอะไร
      String message = response.message;
      print('title = $title, message=$message');
    });
  }

  //สร้าง Thread อีกตัว
  // Future<void> setupDisplayName() async {
  //   final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //   await firebaseAuth.currentUser().then((response) {
  //     //firebaseAuth หาว่า login คือ // ถ้าลงะเบียนผ่าน ก็คือ login อยู่
  //     UserUpdateInfo userUpdateInfo  UserUpdateInfo(); // เก็บค่ารายละเอียดต่างๆ
  //     UserUpdateInfo.displayName = nameString;
  //     response.updateProfile(userUpdateInfo)
  //     MaterialPageRo

  //   });
  // }

  Widget nameText() {
    return TextFormField(
      style: TextStyle(color: Colors.purple),
      decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          color: Colors.purple,
          size: 48.0,
        ),
        labelText: 'Display Name : ',
        labelStyle: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type Your Nick Name for Display',
        helperStyle: TextStyle(
          color: Colors.purple,
          fontStyle: FontStyle.italic,
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please Fill Your Name is the Black';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        nameString = value.trim();
      },
    );
  }

  Widget emailText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.pink),
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.pink,
          size: 48.0,
        ),
        labelText: 'Email : ',
        labelStyle: TextStyle(
          color: Colors.pink,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type Your Email',
        helperStyle: TextStyle(
          color: Colors.pink.shade300,
          fontStyle: FontStyle.italic,
        ),
      ),
      validator: (String value) {
        if (!((value.contains('@')) && (value.contains('.')))) {
          return 'Please type Email ......';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        emailString = value.trim();
      },
    );
  }

  Widget passwordText() {
    return TextFormField(
      style: TextStyle(color: Colors.green),
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Colors.green,
          size: 48.0,
        ),
        labelText: 'Password : ',
        labelStyle: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type Your password more 6 Charactor',
        helperStyle: TextStyle(
          color: Colors.green,
          fontStyle: FontStyle.italic,
        ),
      ),
      validator: (String value) {
        if (value.length < 6) {
          return 'Password More 6 Charactor';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        passwordString = value.trim();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue.shade800,
      //   title: Text('Register'),
      //   actions: <Widget>[registerButton()],
      // ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            nameText(),
            emailText(),
            passwordText(),
            registerButton(),
          ],
        ),
      ),
    );
  }
}
