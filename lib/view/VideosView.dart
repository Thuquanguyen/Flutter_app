import 'package:app_manage/Model/Videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_manage/view/ListVideos.dart';
import 'package:app_manage/view/HealthView.dart';

GlobalKey<HealthViewState> globalKey = GlobalKey();
List<Video> listVideos = [
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
  Video(
      title: "Anh Chỉ Cần Có Em - Trương Quốc Quý | Official",
      url: "https://www.youtube.com/watch?v=te5jn4n36Rw",
      urlImage: "images/image_profile.jpg",
      detail: """
    Anh Chỉ Cần Có Em - Trương Quốc Quý | Official
    ✔ Hồng Ân Entertainment - Kênh nhạc Việt hàng đầu YouTube
    ✔ Like fanpage nhận nhạc mới: https://goo.gl/OME7EQ
    ✔ Website chính thức: http://hamedia.vn
    Contact me: Hongnganqa@gmail.com
    © Copyright by Hong An Music
    Bản quyền các ca khúc thuộc về Hồng Ân Media

    #hồngân #anhchicancoem #truongquocquy
            """),
];
class ListVideo extends StatelessWidget {
  final Function func;
  const ListVideo({Key key, this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
        body: new ListView.builder(itemBuilder: (context, index) {
          return new Container(
            height: 280.0,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Align(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                        child: new Text(
                          "CAN YOU WANT LISTEN ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15.0),
                        ),
                      ),
                      new Container(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: new Icon(Icons.arrow_forward_ios, size: 15.0),
                      )
                    ],
                  ),
                ),
                new Expanded(
                    child: ListView.builder(
                      itemCount: listVideos.length,
                      itemBuilder: (context, index) {
                        return new Container(
                          padding: const EdgeInsets.all(10.0),
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0),image: new DecorationImage(image:
                                AssetImage(listVideos[index].urlImage),
                                  fit: BoxFit.cover,)),
                              ),
                              new Container(
                                alignment: Alignment.topLeft,
                                width: 120,
                                padding: const EdgeInsets.only(top: 10.0),
                                child: new Text(listVideos[index].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0)),
                              ),
                              new Container(
                                alignment: Alignment.topLeft,
                                width: 120,
                                padding: const EdgeInsets.only(top: 5.0),
                                child: new Text("Various Artists", style: TextStyle(color: Colors.grey),),
                              )
                            ],
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    )),
                new Center(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: new GestureDetector(
                      child: new Text(
                        "Load more",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.0),
                      ),
                      onTap: (){
//                  Navigator.of(context).push(new MaterialPageRoute(builder:
//                      (BuildContext context) => new ListAllVideos()));
                       this.func();
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}

