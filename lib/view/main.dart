import 'package:flutter/material.dart';
import 'package:app_manage/Controller/signinStateFull.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "App Mobile",
        home: SignInStateFull(),
    );
  }
}


