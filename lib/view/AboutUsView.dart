import 'package:app_manage/view/AboutQuestionView.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AboutUs extends StatelessWidget {
  static final String path = "lib/src/pages/food/recipe_details.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
//        title: new Text("About Us", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.question_answer, color: Colors.red),
            label: Text("About question"),
            onPressed: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=> AboutQuestion()));
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(left:20.0, right: 20.0,top: 10.0),
              children: <Widget>[
                Text("French\nToast".toUpperCase(), style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 16.0,),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia, odio ut placerat finibus, ipsum risus consectetur ligula, non mattis mi neque ac mi."),
                SizedBox(height: 20.0,),
                Container(
                  height: 30,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.memory),
                            SizedBox(width: 5.0,),
                            Text("65%")
                          ],
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Text("Vegetarian",textAlign: TextAlign.center,),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.timer),
                            SizedBox(width: 5.0,),
                            Text("10 min")
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                _buildStep(
                    leadingTitle: "01",
                    title: "Step".toUpperCase(),
                    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia, odio ut placerat finibus, ipsum risus consectetur ligula, non mattis mi neque ac mi. Vivamus quis tellus sed erat eleifend pharetra ac non diam. Integer vitae ipsum congue, vestibulum eros quis, interdum tellus. Nunc vel dictum elit. Curabitur suscipit scelerisque."

                ),
                SizedBox(height: 30.0,),
                _buildStep(
                    leadingTitle: "02",
                    title: "Step".toUpperCase(),
                    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia, odio ut placerat finibus, ipsum risus consectetur ligula, non mattis mi neque ac mi. Vivamus quis tellus sed erat eleifend pharetra ac non diam. Integer vitae ipsum congue, vestibulum eros quis, interdum tellus. Nunc vel dictum elit. Curabitur suscipit scelerisque."

                ),
                SizedBox(height: 30.0,),
                _buildStep(
                    leadingTitle: "03",
                    title: "Step".toUpperCase(),
                    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia, odio ut placerat finibus, ipsum risus consectetur ligula, non mattis mi neque ac mi. Vivamus quis tellus sed erat eleifend pharetra ac non diam. Integer vitae ipsum congue, vestibulum eros quis, interdum tellus. Nunc vel dictum elit. Curabitur suscipit scelerisque."

                ),
              ],
            ),
          ),
          Material(
            elevation: 10.0,
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.all(10.0),
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: AssetImage('images/image_profile.jpg'),fit:BoxFit.cover)

                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: AssetImage('images/image_profile.jpg'),fit:BoxFit.cover)

                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: AssetImage('images/profile.jpg'),fit:BoxFit.cover)

                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: AssetImage('images/image_profile.jpg'),fit:BoxFit.cover)

                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: AssetImage('images/profile.jpg'),fit:BoxFit.cover)

                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStep({String leadingTitle, String title, String content}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          color: Colors.red,
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Text(leadingTitle, style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0
            )),
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0
              )),
              SizedBox(height: 10.0,),
              Text(content),
            ],
          ),
        )
      ],
    );
  }
}