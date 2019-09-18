import 'package:app_manage/Controller/signinStateFull.dart';
import 'package:app_manage/view/ListVideos.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:app_manage/view/ForYouContact.dart';
import 'package:app_manage/view/NewsView.dart';
import 'package:app_manage/view/VideosView.dart';

final List<Map> articles = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
];

class HealthOnePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new ViewHealthViewSatteFul();
  }
}

class ViewHealthViewSatteFul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HealthViewState();
  }
}

class HealthViewState extends State<ViewHealthViewSatteFul> {
  static final String path = "lib/src/pages/blog/bhome1.dart";
  final Color primaryColor = Color(0xffFD6592);
  final Color bgColor = Color(0xffF9E0E3);
  final Color secondaryColor = Color(0xff324558);
  @override
  Widget build(BuildContext context) {
    showScreenNew()
    {
      Navigator.of(context).push(new MaterialPageRoute(builder:
          (BuildContext context) => new ListAllVideos()));
    }
    // TODO: implement build
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Theme(
        data: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            textTheme: TextTheme(
              title: TextStyle(
                color: secondaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            iconTheme: IconThemeData(color: secondaryColor),
            actionsIconTheme: IconThemeData(
              color: secondaryColor,
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Theme.of(context).buttonColor,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Categories Health'),
            automaticallyImplyLeading: false,
            actions: <Widget>[
              new IconButton(icon: new Icon(Icons.search), onPressed: null)
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: primaryColor,
              indicatorColor: primaryColor,
              unselectedLabelColor: secondaryColor,
              tabs: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("For You"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Health"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Video"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("News"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Entertainment"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.separated(
                padding: const EdgeInsets.all(10.0),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _buildArticleItem(index, context);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16.0),
              ),
              Container(
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignInStateFull()),
                    );
                  },
                  child: new Text("hahaha"),
                ),
              ),
              Container(
                child: new ListVideo(func: showScreenNew),
              ),
              Container(
                child: new NewsView(),
              ),
              Container(
                child: Text("Tab 5"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArticleItem(int index, BuildContext context) {
    Map article = articles[index];
    final String sample = "images/image_profile.jpg";
    return new GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white),
        child: Stack(
          children: <Widget>[
            Container(
              width: 90,
              height: 90,
              color: Colors.lightBlueAccent,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 80,
                    color: Colors.blue,
                    width: 80.0,
                    child: Image.asset(
                      sample,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            article["title"],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: secondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: CircleAvatar(
                                        radius: 5.0,
                                        backgroundColor: primaryColor,
                                      ),
                                    ),
                                    Expanded(
                                        child: Text(article["author"],
                                            style: TextStyle(fontSize: 14.0))),
                                    Text(
                                      article["time"],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          style: TextStyle(height: 2.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new ForYouContact()));
      },
    );
  }
}
