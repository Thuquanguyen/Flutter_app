import 'package:flutter/material.dart';
import 'package:app_manage/data/QuestionData.dart';

class DetailsQuestion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Details Question"),
      ),
      body: DetailsQuestionStateFul(),
    );
  }
}

class DetailsQuestionStateFul extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new DetailsQuestionState();
  }
}

class DetailsQuestionState extends State<DetailsQuestionStateFul>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SingleChildScrollView(
      child: new Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: new Text(QuestionList().listQuestion[0].title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
            ),
            new Text(QuestionList().listQuestion[0].result, style: TextStyle(fontSize: 16.0),),
          ],
        ),
      ),
    );
  }
}