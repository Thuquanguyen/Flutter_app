import 'package:app_manage/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:app_manage/Controller/signinStateFull.dart';

class HomeDrawer extends StatefulWidget {
  final AnimationController iconAnimationController;
  final DrawerIndex screenIndex;
  final Function(int) callBackIndex;
  HomeDrawer({Key key, this.screenIndex, this.iconAnimationController, this.callBackIndex})
      : super(key: key);
  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  List<DrawerList> drawerList;
  @override
  void initState() {
    setdDrawerListArray();
    super.initState();
  }

  void setdDrawerListArray() {
    drawerList = [
      DrawerList(
        index: DrawerIndex.HOME,
        labelName: 'Home',
        icon: new Icon(Icons.home),
        indexList: 0
      ),
      DrawerList(
          labelName: 'Notification',
          icon: new Icon(Icons.notifications),
          indexList: 1
      ),
      DrawerList(
        labelName: 'Favorites',
        icon: new Icon(Icons.favorite),
        indexList: 2
      ),
      DrawerList(
        labelName: 'Health',
        icon: new Icon(Icons.help),
        indexList: 3
      ),
      DrawerList(
        labelName: 'Setting',
        icon: new Icon(Icons.settings),
        indexList: 4
      ),
      DrawerList(
        labelName: 'Rate the app',
        icon: new Icon(Icons.share),
        indexList: 5
      ),
      DrawerList(
        labelName: 'About Us',
        icon: new Icon(Icons.info),
        indexList: 6
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.notWhite.withOpacity(0.5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 40.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AnimatedBuilder(
                    animation: widget.iconAnimationController,
                    builder: (BuildContext context, Widget child) {
                      return new ScaleTransition(
                        scale: new AlwaysStoppedAnimation(
                            1.0 - (widget.iconAnimationController.value) * 0.2),
                        child: RotationTransition(
                          turns: new AlwaysStoppedAnimation(Tween(
                              begin: 0.0, end: 24.0)
                              .animate(CurvedAnimation(
                              parent: widget.iconAnimationController,
                              curve: Curves.fastOutSlowIn))
                              .value /
                              360),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: AppTheme.grey.withOpacity(0.6),
                                    offset: Offset(2.0, 4.0),
                                    blurRadius: 8),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.all(Radius.circular(60.0)),
                              child: new Image.asset("images/profile.jpg",width: 40.0,height: 40.0,fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 4),
                    child: Text(
                      "Chris Hemsworth",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppTheme.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Divider(
            height: 1,
            color: AppTheme.grey.withOpacity(0.6),
          ),
          Expanded(
            child: ListView.builder(
//              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(0.0),
              itemCount: drawerList.length,
              itemBuilder: (context, index) {
                return inkwell(drawerList[index]);
              },
            ),
          ),
          Divider(
            height: 1,
            color: AppTheme.grey.withOpacity(0.6),
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: new Text(
                  "Sign Out",
                  style: new TextStyle(
                    fontFamily: AppTheme.fontName,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppTheme.darkText,
                  ),
                  textAlign: TextAlign.left,
                ),
                trailing: new Icon(
                  Icons.power_settings_new,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex) => SignInStateFull()));
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget inkwell(DrawerList listData) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.grey.withOpacity(0.1),
        highlightColor: Colors.transparent,
        onTap: () {
          navigationtoScreen(listData.index,listData.indexList);
        },
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 6.0,
                    height: 46.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                  ),
                  listData.isAssetsImage
                      ? Container(
                    width: 24,
                    height: 24,
                    child: Image.asset(listData.imageName,
                        color: widget.screenIndex == listData.index
                            ? Colors.blue
                            : AppTheme.nearlyBlack),
                  )
                      : new Icon(listData.icon.icon,
                      color: widget.screenIndex == listData.index
                          ? Colors.blue
                          : AppTheme.nearlyBlack),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                  ),
                  new Text(
                    listData.labelName,
                    style: new TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: widget.screenIndex == listData.index
                          ? Colors.blue
                          : AppTheme.nearlyBlack,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            widget.screenIndex == listData.index
                ? AnimatedBuilder(
              animation: widget.iconAnimationController,
              builder: (BuildContext context, Widget child) {
                return new Transform(
                  transform: new Matrix4.translationValues(
                      (MediaQuery.of(context).size.width * 0.75 - 64) *
                          (1.0 -
                              widget.iconAnimationController.value -
                              1.0),
                      0.0,
                      0.0),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(
                      width:
                      MediaQuery.of(context).size.width * 0.75 - 64,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(28),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(28),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
                : SizedBox()
          ],
        ),
      ),
    );
  }

  void navigationtoScreen(DrawerIndex indexScreen,int index) async {
    widget.callBackIndex(index);
    drawerList.forEach((drawer)=> drawer.index = DrawerIndex.NONE );
    drawerList[index].index = DrawerIndex.HOME;
  }
}

enum DrawerIndex {
  HOME,
  NONE
}

class DrawerList {
  String labelName;
  Icon icon;
  bool isAssetsImage;
  String imageName;
  DrawerIndex index;
  int indexList;

  DrawerList({
    this.isAssetsImage = false,
    this.labelName = '',
    this.icon,
    this.index,
    this.imageName = '',
    this.indexList = 0,
  });
}