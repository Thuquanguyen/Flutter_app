import 'package:app_manage/data/VideoData.dart';
import 'package:app_manage/view/DetailsVideo.dart';
import 'package:flutter/material.dart';


class ListAllVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Infomation Contact'),
      ),
      body: new GridView.builder(
          gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.4),),
          itemCount: VideoList().listVideos.length,
          itemBuilder: (BuildContext context, index) {
            return customGridview(index,context);
          }),
    );
  }
}

Widget customGridview(index,context) => new Container(
  child:
  new GestureDetector(
    child: Container(
      padding: const EdgeInsets.all(10.0),
      child: new Column(
        children: <Widget>[
          new Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0),image: new DecorationImage(image:
            AssetImage(VideoList().listVideos[index].urlImage),
              fit: BoxFit.cover,)),
          ),
          new Container(
            alignment: Alignment.topLeft,
            width: 150,
            padding: const EdgeInsets.only(top: 3.0),
            child: new Text(VideoList().listVideos[index].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),
          ),
          new Container(
            alignment: Alignment.topLeft,
            width: 150,
            padding: const EdgeInsets.only(top: 5.0),
            child: new Text("Various Artists", style: TextStyle(color: Colors.grey),),
          )
        ],
      ),
    ),onTap: (){
      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new DetailVideos()));
  },
  ),
);
