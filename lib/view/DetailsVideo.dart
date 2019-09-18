import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player/youtube_player.dart';

class DetailVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Video"),
        ),
        body:  VideoStateFul()
    );
  }
}

class VideoStateFul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new VideoState();
  }
}

class VideoState extends State<VideoStateFul> {
  String id = "yW8hd9WvJ5A";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          YoutubePlayer(
            context: context,
            source: id,
            quality: YoutubeQuality.HD,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(child: Text("Oct 21, 2017"),),
                  IconButton(icon: Icon(Icons.share,color: Colors.blue), onPressed: (){},)
                ],),
                Text("Lorem ipsum dolor sit amet", style: Theme.of(context).textTheme.title,),
                Divider(),
                SizedBox(height: 10.0,),
                Row(children: <Widget>[
                  Icon(Icons.favorite, color: Colors.blue),
                  SizedBox(width: 5.0,),
                  Text("20.2k"),
                  SizedBox(width: 16.0,),
                  Icon(Icons.comment,color: Colors.blue),
                  SizedBox(width: 5.0,),
                  Text("2.2k"),
                ],),
                SizedBox(height: 10.0,),
                Text("Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis.", textAlign: TextAlign.justify,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
