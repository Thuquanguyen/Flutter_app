import 'package:app_manage/Model/Question.dart';
import 'package:app_manage/view/DetailsQuestion.dart';
import 'package:flutter/material.dart';
import 'package:app_manage/data/QuestionData.dart';

class AboutQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
        title: new Text("Check Answers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21.0),),
        centerTitle: false,
      ),
      body: AboutQuestionStateFul(),
    );
  }
}

class AboutQuestionStateFul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AboutQuestionState();
  }
}

class AboutQuestionState extends State<AboutQuestionStateFul> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
        new Container(
          height: (30 * MediaQuery.of(context).size.height) / 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0)),
            border: Border(bottom: BorderSide(width: 2)),
            color: Colors.lightBlue,
          ),
        ),
        new ListView.builder(
            itemCount: QuestionList().listQuestion.length,
            itemBuilder: (context, index) {
              return customList(index,context);
            })
      ],
    );
  }
}

Widget customList(index,context) => new GestureDetector(
  child: new Container(
    margin: const EdgeInsets.all(10.0),
    padding: const EdgeInsets.only(bottom: 5.0),
    decoration: new BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            spreadRadius: 1.0,
          )
        ],
        borderRadius: BorderRadius.circular(7.0),
        border:  Border.all(color: Colors.white)),
    child: new Column(
      children: <Widget>[
        new ListTile(
          title: new Text(QuestionList().listQuestion[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: new Text(QuestionList().listQuestion[index].subTitle),
        ),
        new Container(
          padding: const EdgeInsets.only(left: 15.0),
          child: new Text(
            "Result: ${QuestionList().listQuestion[index].result}",
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  ),
  onTap: (){
      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>DetailsQuestion()));
  },
);
