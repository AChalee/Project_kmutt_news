import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: "Enter your e-mail"),
          )
        ],
      ),
    );
  }
}
