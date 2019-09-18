import 'package:app_manage/Model/MapType.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:app_manage/Controller/MainAppStateFull.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:location/location.dart';

class Main extends State<MainStateFull> {
  String _mapStyle;
  bool _checkShow = false;
  MapType _mapType = MapType.hybrid;
  @override
  void initState() {
    super.initState();
//    rootBundle.loadString('assets/map_style.txt').then((string) {
//      _mapStyle = string;
//      _checkShow = false;
//    });
  }

  final Location location = new Location();
  var currentLocation = LocationData;
  final Set<Marker> _markers = Set();
  String title = '';
  GoogleMapController mapController;
  LatLng _center = new LatLng(21.031172, 105.783889);
  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
      controller.animateCamera(
          CameraUpdate.newLatLngZoom(LatLng(21.031172, 105.783889), 11.0));
      setState(() {
        _markers.add(
          Marker(
              markerId: MarkerId('vietnam'),
              position: LatLng(21.031172, 105.783889),
              infoWindow:
                  InfoWindow(title: 'Ha Noi', snippet: 'Welcome to Ha Noi'),
              onTap: () {
                widget.func();
                setState(() {
                  _checkShow = false;
                });
              }),
        );
      });
    }

    // ignore: missing_return
    return Scaffold(
      key: _key,
      body: new Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            markers: _markers,
            compassEnabled: true,
            mapType: _mapType,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 33.0, left: 10.0, right: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 30.0),
                      padding: const EdgeInsets.all(14.0),
                      child: new TextField(
                          autofocus: false,
                          style: TextStyle(fontSize: 16.0),
                          decoration: new InputDecoration.collapsed(
                              hintText: "Type Your Locations..."))),
                ),
                new Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: new Icon(Icons.search),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: new Container(
              alignment: Alignment.center,
              width: 40.0,
              height: 40.0,
              margin: const EdgeInsets.only(bottom: 50.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0))),
              child: new GestureDetector(
                child: new Icon(
                  Icons.my_location,
                  color: Colors.blue,
                ),
                onTap: () {
                  widget.func();
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: new Container(
              alignment: Alignment.center,
              width: 40.0,
              height: 40.0,
              margin: const EdgeInsets.only(bottom: 120.0),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0))),
              child: new GestureDetector(
                child: new Icon(Icons.directions, color: Colors.white),
                onTap: () {
                  widget.func();
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: new Container(
              alignment: Alignment.center,
              width: 40.0,
              height: 40.0,
              margin: const EdgeInsets.only(bottom: 50.0),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
              child: new GestureDetector(
                child: new Icon(
                  Icons.add_call,
                  color: Colors.white,
                ),
                onTap: () {
                  widget.func();
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: new Container(
              alignment: Alignment.center,
              width: 40.0,
              height: 40.0,
              margin: const EdgeInsets.only(bottom: 120.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
              child: new GestureDetector(
                child: new Icon(
                  Icons.map,
                  color: Colors.blue,
                ),
                onTap: () {
                  setState(() {
                    _checkShow = true;
                  });
                },
              ),
            ),
          ),
          new Align(
            alignment: Alignment.bottomCenter,
            child: _checkShow
                ? new Container(
                    color: Colors.blueGrey,
                    height: (7 * MediaQuery.of(context).size.height) / 100,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new GestureDetector(
                          onTap: () {
                            setState(() {
                              _checkShow = false;
                              _mapType = MapType.normal;
                            });
                          },
                          child: new Text("Normal",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                        Expanded(
                            child: new GestureDetector(
                          onTap: () {
                            setState(() {
                              _checkShow = false;
                              _mapType = MapType.hybrid;
                            });
                          },
                          child: new Text("Hybrid",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                        Expanded(
                            child: new GestureDetector(
                          onTap: () {
                            setState(() {
                              _checkShow = false;
                              _mapType = MapType.satellite;
                            });
                          },
                          child: new Text("Satellite",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                        Expanded(
                            child: new GestureDetector(
                          onTap: () {
                            setState(() {
                              _checkShow = false;
                              _mapType = MapType.terrain;
                            });
                          },
                          child: new Text("Terrain",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                      ],
                    ),
                  )
                : null,
          )
        ],
      ),
    );
  }
}
