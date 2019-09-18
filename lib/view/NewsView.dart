import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class NewsView extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App New",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NewsStateFull(),
    );
  }
}

class NewsStateFull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new NewsViewMain();
  }
}

class NewsViewMain extends State<NewsStateFull> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WebviewScaffold(
      url: 'https://inducesmile.com',
      hidden: true,
    );
  }
}
