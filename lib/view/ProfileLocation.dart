import 'dart:io';

/**
 * Author: Sudip Thapa
 * profile: https://github.com/sudeepthapa
 */

import 'package:flutter/material.dart';

class ProfileLocationPage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile3.dart";
  final image = "images/image_profile.jpg";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.asset(image, fit: BoxFit.cover,),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 96.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Little Butterfly", style: Theme.of(context).textTheme.title),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text("Mon - Fri",style: TextStyle(fontWeight: FontWeight.bold),),
                                    subtitle: Text("7.00am - 20.00am"),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(child: Column(
                                  children: <Widget>[
                                    new Icon(Icons.thumb_up,color: Colors.blue),
                                    new Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text("285",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
                                    ),
                                  ],
                                ),),
                                Expanded(child: Column(
                                  children: <Widget>[
                                    new Icon(Icons.comment,color: Colors.blue),
                                    new Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text("3025",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
                                    ),
                                  ],
                                ),),
                                Expanded(child: Column(
                                  children: <Widget>[
                                    new Icon(Icons.favorite,color: Colors.blue),
                                    new Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text("650",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
                                    ),
                                  ],
                                ),
                                ),
                                Expanded(child: Column(
                                  children: <Widget>[
                                    new Icon(Icons.bookmark_border,color: Colors.blue),
                                    new Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text("Save",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
                                    ),
                                  ],
                                ),
                                ),
                                Expanded(child: Column(
                                  children: <Widget>[
                                    new Icon(Icons.share,color: Colors.blue),
                                    new Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text("Share",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
                                    ),
                                  ],
                                ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage(image),
                                fit: BoxFit.cover
                            )
                        ),
                        margin: EdgeInsets.only(left: 16.0),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(child: ListTile(title: Text("User information"))),
                            GestureDetector(
                              child: new Container(
                                padding: const EdgeInsets.only(right: 20.0,top: 10.0),
                                child: Column(
                                  children: <Widget>[
                                    new Icon(Icons.directions,color: Colors.blue),
                                    new Container(
                                      padding: const EdgeInsets.all(5.0),
                                      child: new Text("Directions"),
                                    )
                                  ],
                                ),
                              ),
                              onTap: (){},
                            )
                          ],
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Location"),
                          subtitle: Text("No.2 Duy Tan,Ha Noi, Viet Nam"),
                          leading: Icon(Icons.location_city),
                        ),
                        ListTile(
                          title: Text("Phone"),
                          subtitle: Text("+977-9815225566"),
                          leading: Icon(Icons.phone),
                          trailing: new RaisedButton(onPressed: null,child: new Text("Call Now",style: TextStyle(color: Colors.white),),color: Colors.blue),
                        ),
                        ListTile(
                          title: Text("Email"),
                          subtitle: Text("butterfly.little@gmail.com"),
                          leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Website"),
                          subtitle: Text("https://www.littlebutterfly.com"),
                          leading: Icon(Icons.web),
                        ),
                        ListTile(
                          title: Text("Confirm Location"),
                          leading: Icon(Icons.beenhere),
                          trailing: new RaisedButton(onPressed: null,child: new Text("Confirm",style: TextStyle(color: Colors.white),),color: Colors.blue),
                        ),
                        ListTile(
                          title: Text("About"),
                          subtitle: Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla, illo repellendus quas beatae reprehenderit nemo, debitis explicabo officiis sit aut obcaecati iusto porro? Exercitationem illum consequuntur magnam eveniet delectus ab."),
                          leading: Icon(Icons.person),
                        ),
                        ListTile(
                          title: Text("Joined Date"),
                          subtitle: Text("15 February 2019"),
                          leading: Icon(Icons.calendar_view_day),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          ],
        ),
      ),
    );
  }
}