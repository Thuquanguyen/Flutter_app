import 'package:app_manage/view/main/homeMain.dart';
import 'package:flutter/material.dart';

class MainStateFull extends StatefulWidget {
  final Function func;
  const MainStateFull({Key key, this.func}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new Main();
  }
}
