import 'package:flutter/material.dart';

class LocationProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
        centerTitle: true,
      ),
      body:  LocationStateFul(),
    );
  }
}

class LocationStateFul extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LocationState();
  }
}

class LocationState extends State<LocationStateFul>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(child: new Text("hahah"),);
  }
}