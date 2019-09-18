import 'package:app_manage/view/ProfileLocation.dart';
import 'package:flutter/material.dart';
import 'package:app_manage/Controller/MainAppStateFull.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    showDetailsLocation()
    {
      Navigator.of(context).push(new MaterialPageRoute(builder:
          (BuildContext context) => new ProfileLocationPage()));
    }
    return MaterialApp(
        title: "App New",
        theme: ThemeData(primarySwatch: Colors.blue),
        home:  MainStateFull(func: showDetailsLocation),
    );
  }
}


