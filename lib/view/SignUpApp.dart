import 'package:flutter/material.dart';
import 'package:app_manage/Controller/signupStateFull.dart';

void main() => runApp(new SignUpApp());

class SignUpApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "App New",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SignUpStateFull()
    );
  }
}


