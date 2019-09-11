import 'package:app_manage/view/SignUpApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:app_manage/Controller/signinStateFull.dart';
import 'package:app_manage/view/MainAppCustom.dart';

class SignIn extends State<SignInStateFull> {
  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight= MediaQuery.of(context).size.width;
    var marginTopTitle = (10*sizeHeight)/100;
    Container text = Container(
        margin: EdgeInsets.only(top: marginTopTitle),
        alignment: const Alignment(-1.0, 0.0),
        child: new Stack(
          alignment: const Alignment(-1.0, 1.0),
          children: <Widget>[
            new Container(
              child:new Container(
                margin: const EdgeInsets.only(left: 15.0,top: 15.0,bottom: 10.0,right: 25.0),
                width: 70.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(left: 25.0,top: 15.0,bottom: 10.0,right: 25.0),
              child:  new Text("Sign ",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ));
    Container editextEmail = Container(
        padding: const EdgeInsets.only(left: 25.0,top: 15.0,bottom: 10.0,right: 25.0),
        child: new TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText: "Email")));
    Container editextPassword = Container(
        padding: const EdgeInsets.only(left: 25.0,top: 15.0,bottom: 10.0,right: 25.0),
        child: new TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Password")));
    Container forgotPassword = Container(
        alignment: const Alignment(1.0, 0.0),
        padding: const EdgeInsets.only(right: 25.0),
        child: new Text("Forgot your password?",
            style: TextStyle(fontSize: 14.0, color: Colors.black)));

    double  setPadding = (50 * sizeWidth) / 100;
    Container buttonSignIn = Container(
      alignment: const Alignment(0.0, 1.0),
      margin:  EdgeInsets.only(left: setPadding, top: (25*sizeHeight)/100),
      padding:  const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
          color: Colors.yellow
      ),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: new GestureDetector(
                      child: Text("SIGN IN",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder:
                            (BuildContext context) => new HotelHomePage()));
                      }
                  ),
                )
              ],
            ),
          ),
          new Container(
              padding: const EdgeInsets.all(10.0),
              child: new Icon(Icons.arrow_forward))
        ],
      ),
    );
    Container social = new Container(
      margin: const EdgeInsets.only(top: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: new Container(
                margin: EdgeInsets.all(10.0),
                child: SignInButton(
                  Buttons.Google,
                  text: "Google",
                  onPressed: () {},
                ),
              )
          ),
          Expanded(
            child: new Container(
              margin: EdgeInsets.all(10.0),
              child: SignInButton(
                Buttons.Facebook,
                text: "Facebook",
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
    Container signUp = new Container(
      margin: const EdgeInsets.only(top: 45.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Align(
            alignment: Alignment.centerRight,
            child: new Text("Don't have an Account? "),
          ),
          new Align(
            alignment: Alignment.centerLeft,
            child:
            new GestureDetector(
                child: Text("Sign Up", style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue, fontSize: 16.0)),
                onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(builder:
                        (BuildContext context) => new SignUpApp()));
                }
            ),
          )
        ],
      ),
    );

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child:  Column(
            children: <Widget>[
              text,
              editextEmail,
              editextPassword,
              forgotPassword,
              buttonSignIn,
              social,
              signUp
            ],
          ),
      ),
    );
  }
}
