import 'package:flutter/material.dart';
import 'package:app_manage/view/SignInApp.dart';
import 'package:app_manage/Controller/signupStateFull.dart';

class SignUp extends State<SignUpStateFull> {
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
              child:  new Text("Sign Up",
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
    Container editConfirmPassword = Container(
        padding: const EdgeInsets.only(left: 25.0,top: 15.0,bottom: 10.0,right: 25.0),
        child: new TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Confirm Password")));

    Container serviceTerms = new Container(
      margin: const EdgeInsets.only(top: 15.0,right: 25.0,left: 25.0),
      child: new Column(
        children: <Widget>[
          new Align(
            alignment: Alignment.centerLeft,
            child: new Text("By clicking Sign Up you agree to the following "),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                new Align(
                  alignment: Alignment.centerLeft,
                  child:
                  new GestureDetector(
                      child: Text("Terms and Conditions ", style: TextStyle( color: Colors.blue, fontSize: 15.0, fontWeight: FontWeight.bold)),
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder:
                            (BuildContext context) => new SignInApp()));
                      }
                  ),
                ),
              new Align(
                alignment: Alignment.centerRight,
                child: new Text("withour reservations"),
              )
            ],
          )
        ],
      ),
    );
    double  setPadding = (50 * sizeWidth) / 100;
    Container buttonSignIn = Container(
      alignment: const Alignment(0.0, 1.0),
      margin:  EdgeInsets.only(left: setPadding, top: (15*sizeHeight)/100),
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
                  child: new Text("SIGN UP",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
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
    Container signUp = new Container(
      margin: const EdgeInsets.only(top: 75.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Align(
            child: new Text("You are have an Account? "),
          ),
          new Align(
            child:
            new GestureDetector(
                child: Text("Sign In", style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue, fontSize: 16.0)),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder:
                      (BuildContext context) => new SignInApp()));
                }
            ),
          )
        ],
      ),
    );

    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
          child: new  Column(
            children: <Widget>[
              text,
              editextEmail,
              editextPassword,
              editConfirmPassword,
              serviceTerms,
              buttonSignIn,
              signUp
            ],
          ),
        ),
      )
    );
  }
}
