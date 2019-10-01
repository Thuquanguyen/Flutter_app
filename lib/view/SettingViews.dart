import 'package:app_manage/view/hotelBooking/SliderCustomShape.dart';
import 'package:app_manage/view/hotelBooking/hotelAppTheme.dart';
import 'package:app_manage/view/hotelBooking/model/popularFilterList.dart';
import 'package:flutter/material.dart';

final primary = Color(0xff696b9e);
final secondary = Color(0xfff29a94);
class SettingMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: new Center(child: new Text("Settings", style: new TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.notifications_active), onPressed: null,color: Colors.black,)
          ],
        ),
        body: SettingViewStateFul(),
      ),
    );
  }
}
class SettingViewStateFul extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SettingViewState();
  }
}
class SettingViewState extends State<SettingViewStateFul>{
  List<PopularFilterListData> popularFilterListData = PopularFilterListData.popularFList;
  List<PopularFilterListData> accomodationListData = PopularFilterListData.accomodationList;
  RangeValues _values = RangeValues(100, 600);
  double distValue = 50.0;
  var _checkSwitch = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(top: 50.0),
            child: new Row(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                          image: AssetImage("images/profile.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                  margin: EdgeInsets.only(left: 16.0,right: 30.0),
                ),
                Expanded(child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("Mina Campbell", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                    new Container(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                      child: new Text("eino.heller@yahoo.com", style: TextStyle(color: Colors.grey),),
                    ),
                    new GestureDetector(
                      child: new Container(
                        padding: const EdgeInsets.only(top: 7.0, bottom: 7.0, left: 15.0, right: 15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border:  Border.all(color: Colors.red)
                        ),
                        child: new Text("Edit profile", style: TextStyle(color: Colors.red),),
                      ),
                      onTap: (){},
                    )
                  ],
                ))
              ],
            ),
          ),
          new Container(
            margin: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, //has the effect of softening the shadow
                      spreadRadius: 5.0,
                      offset: Offset(10.0,10.0)
                  )
                ],
                borderRadius: BorderRadius.circular(7.0),
                border:  Border.all(color: Colors.white)
            ),
            child: new Container(
              padding: const EdgeInsets.all(10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  priceBarFilter(),
                  popularFilter(),
                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Theme mode",style: TextStyle(color: Colors.grey)),
                      ),
                      new GestureDetector(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              alignment: Alignment.centerRight,
                              child: new Text("Light",style: TextStyle(color: Colors.grey)),
                            ),
                            new Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                          ],
                        ),
                      )
                    ],
                  ),new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Offline reading",style: TextStyle(color: Colors.grey),),
                      ),
                      new Switch(value: _checkSwitch, onChanged: (bool value){
                        setState(() {
                          this._checkSwitch = value;
                        });
                      },
                        activeColor: Colors.red,
                        inactiveThumbColor: Colors.blueGrey,)
                    ],
                  ),
                  new Text("Account", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                  new Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child:  new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Personal infomation",style: TextStyle(color: Colors.grey),),
                        ),
                        new Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                      ],
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Country",style: TextStyle(color: Colors.grey)),
                        ),
                        new GestureDetector(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                alignment: Alignment.centerRight,
                                child: new Text("United states",style: TextStyle(color: Colors.grey)),
                              ),
                              new Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Language",style: TextStyle(color: Colors.grey),),
                        ),
                        new GestureDetector(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                alignment: Alignment.centerRight,
                                child: new Text("English",style: TextStyle(color: Colors.grey)),
                              ),
                              new Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  new Text("General", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Touch ID & passcode",style: TextStyle(color: Colors.grey),),
                      ),
                      new Switch(value: _checkSwitch, onChanged: (bool value){
                        setState(() {
                          this._checkSwitch = value;
                        });
                      },
                        activeColor: Colors.red,
                        inactiveThumbColor: Colors.blueGrey,)
                    ],
                  ),
                  new Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Theme mode",style: TextStyle(color: Colors.grey)),
                        ),
                        new Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                      ],
                    ),
                  ),new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Binary",style: TextStyle(color: Colors.grey)),
                      ),
                      new Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget priceBarFilter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Price (for 1 night)",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.grey, fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16, fontWeight: FontWeight.normal),
          ),
        ),
        Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: _values.start.round(),
                  child: SizedBox(),
                ),
                Container(
                  width: 54,
                  child: Text(
                    "\$${_values.start.round()}",
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1000 - _values.start.round(),
                  child: SizedBox(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: _values.end.round(),
                  child: SizedBox(),
                ),
                Container(
                  width: 54,
                  child: Text(
                    "\$${_values.end.round()}",
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1000 - _values.end.round(),
                  child: SizedBox(),
                ),
              ],
            ),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
            rangeThumbShape: CustomRangeThumbShape(),
          ),
          child: RangeSlider(
            values: _values,
            min: 0.0,
            max: 1000.0,
            activeColor: HotelAppTheme.buildLightTheme().primaryColor,
            inactiveColor: Colors.grey.withOpacity(0.4),
            divisions: 1000,
            onChanged: (RangeValues values) {
              setState(() {
                _values = values;
              });
            },
          ),
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
  Widget popularFilter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
          child: Text(
            "Popular filters",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.grey, fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16, fontWeight: FontWeight.normal),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: Column(
            children: getPList(),
          ),
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
  List<Widget> getPList() {
    List<Widget> noList = List<Widget>();
    var cout = 0;
    final columCount = 2;
    for (var i = 0; i < popularFilterListData.length / columCount; i++) {
      List<Widget> listUI = List<Widget>();
      for (var i = 0; i < columCount; i++) {
        try {
          final date = popularFilterListData[cout];
          listUI.add(Expanded(
            child: Row(
              children: <Widget>[
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    onTap: () {
                      setState(() {
                        date.isSelected = !date.isSelected;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            date.isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                            color: date.isSelected ? HotelAppTheme.buildLightTheme().primaryColor : Colors.grey.withOpacity(0.6),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            date.titleTxt,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ));
          cout += 1;
        } catch (e) {
          print(e);
        }
      }
      noList.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: listUI,
      ));
    }
    return noList;
  }
}