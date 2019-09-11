import 'package:flutter/material.dart';
import 'package:app_manage/Controller/MainAppStateFull.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:location/location.dart';


class Main extends State<MainStateFull> {

  String _mapStyle;
  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }
  final Location location = new Location();
  var currentLocation = LocationData;
  final Set<Marker> _markers = Set();
  String title = '';
  GoogleMapController mapController;
   LatLng _center = new LatLng(21.031172, 105.783889);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    controller.animateCamera(CameraUpdate.newLatLngZoom(LatLng(21.031172, 105.783889), 11.0));
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('vietnam'),
          position: LatLng(21.031172, 105.783889),
          infoWindow: InfoWindow(title: 'Ha Noi', snippet: 'Welcome to Ha Noi')
        ),
      );
    });
//    mapController.setMapStyle(_mapStyle);
  }
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return

    Drawer _buildDrawer(context){
      return Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new DrawerHeader(
                child: new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image.asset("images/profile.jpg",width: 80.0,height: 80.0,fit: BoxFit.cover),
                  new Text("Nguyen Quang Thu", style:  new TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  new Text("SoftWare Engenering", style:  new TextStyle(color: Colors.black)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.cyan
            )
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),title: new Text("Photos"), onTap: (){
                setState(() {
                  this.title = "Photos";
                });
              Navigator.pop(context);
            },
            ),
            new ListTile(
              leading: new Icon(Icons.notifications),title: new Text("Notifications"), onTap: (){
              setState(() {
                this.title = "Notifications";
              });
              Navigator.pop(context);
            },
            ),
            new ListTile(
              leading: new Icon(Icons.settings),title: new Text("Settings"),
              onTap: (){
                setState(() {
                  this.title = "Settings";
                });
                Navigator.pop(context);
              },
            ),
            new Divider(
              color: Colors.black45,
              indent: 16.0
            ),
            new ListTile(
              title: new Text("About us"), onTap: (){
              setState(() {
                this.title = "About us";
              });
              Navigator.pop(context);
            },
            ),
            new ListTile(
              title: new Text("Privacy"), onTap: (){
              setState(() {
                this.title = "Privacy";
              });
              Navigator.pop(context);
            },
            ),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: new Center(
          child: new Text("Material"),
        ),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        markers: _markers,
        compassEnabled: true,
        padding: EdgeInsets.only(top: 40.0,),
      ),
      drawer: _buildDrawer(context),
    );
  }
}
