import 'package:app_manage/MainViewScreen.dart';
import 'package:app_manage/view/MainApp.dart';
//import 'package:app_manage/view/NavigationHomeScreen.dart';
import 'package:app_manage/view/SignUpApp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:app_manage/Controller/signinStateFull.dart';
import 'package:app_manage/services/Auth.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class SignIn extends State<SignInStateFull> {
  Auth _auth = new Auth();
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  var _checkEmail = false;
  var _checkPassowrd = false;
  var _checkIncorrect = false;
  var _checkSignIn = true;
  File jsonFile;
  Directory dir;
  String filename = "locations.json";
  bool fileExits = false;
  Map<String, String> fileContent;
  bool isLoggedIn = false;

  funcCheckNull() {
    if (_email.text == "") {
      setState(() {
        _checkEmail = true;
        _checkSignIn = false;
      });
    }
    if (_password.text == "") {
      setState(() {
        _checkPassowrd = true;
        _checkSignIn = false;
      });
    }
  }

  void onLoginStatusChanged(bool isLoggedIn) {
    setState(() {
      this.isLoggedIn = isLoggedIn;
    });
  }

  void initiateFacebookLogin() async {
//    var facebookLogin = FacebookLogin();
//    var facebookLoginResult = await facebookLogin.logIn(['email']);
//    switch (facebookLoginResult.status) {
//      case FacebookLoginStatus.error:
//        print("Error");
//        onLoginStatusChanged(false);
//        break;
//      case FacebookLoginStatus.cancelledByUser:
//        print("CancelledByUser");
//        onLoginStatusChanged(false);
//        break;
//      case FacebookLoginStatus.loggedIn:
//        print("LoggedIn");
//        onLoginStatusChanged(true);
//        break;
//    }
  }

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  Future<void> _handleSignIn(context) async {
    try {
      GoogleSignInAccount result = await _googleSignIn.signIn();
      if (result != null) {
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (BuildContext context) => new MainViewScreen()));
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    getApplicationDocumentsDirectory().then((Directory directory) {
      dir = directory;
      jsonFile = new File(dir.path + "/" + filename);
      fileExits = jsonFile.existsSync();
      if (fileExits)
        this.setState(
            () => fileContent = jsonDecode(jsonFile.readAsStringSync()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.width;
    var marginTopTitle = (10 * sizeHeight) / 100;
    Container text = Container(
        margin: EdgeInsets.only(top: marginTopTitle),
        alignment: const Alignment(-1.0, 0.0),
        child: new Stack(
          alignment: const Alignment(-1.0, 1.0),
          children: <Widget>[
            new Container(
              child: new Container(
                margin: const EdgeInsets.only(
                    left: 15.0, top: 15.0, bottom: 10.0, right: 25.0),
                width: 70.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(
                  left: 25.0, top: 15.0, bottom: 10.0, right: 25.0),
              child: new GestureDetector(
                child: new Text("Sign In",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ));
    Container txt_incorect = new Container(
      padding: EdgeInsets.only(
          top: (15 * sizeHeight) / 100, right: 10.0, bottom: 5.0),
      child: new Align(
        alignment: Alignment.topRight,
        child: new Visibility(
          child: new Text("Email or Password incorrect!",
              style: TextStyle(color: Colors.red, fontSize: 15.0)),
          visible: _checkIncorrect,
        ),
      ),
    );

    Container editextEmail = Container(
        padding: const EdgeInsets.only(left: 25.0, top: 15.0, right: 25.0),
        child: new TextField(
            controller: _email,
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            onTap: () {
              setState(() {
                _checkEmail = false;
                _checkIncorrect = false;
                _checkSignIn = true;
              });
            },
            decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText: "Email")));
    Container txt_checkEmail = new Container(
      padding: const EdgeInsets.only(left: 25.0, top: 10.0),
      child: new Align(
        alignment: Alignment.topLeft,
        child: new Visibility(
          child: new Text("Email is required",
              style: TextStyle(color: Colors.red)),
          visible: _checkEmail,
        ),
      ),
    );
    Container txt_checkPassword = new Container(
      padding: const EdgeInsets.only(left: 25.0),
      child: new Align(
        alignment: Alignment.topLeft,
        child: new Visibility(
          child: new Text("Password is required",
              style: TextStyle(color: Colors.red)),
          visible: _checkPassowrd,
        ),
      ),
    );
    Container editextPassword = Container(
        padding: const EdgeInsets.only(
            left: 25.0, top: 15.0, right: 25.0, bottom: 10.0),
        child: new TextField(
            controller: _password,
            maxLines: 1,
            onTap: () {
              setState(() {
                _checkPassowrd = false;
                _checkIncorrect = false;
                _checkSignIn = true;
              });
            },
            obscureText: true,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText: "Password")));
    Container forgotPassword = Container(
        alignment: const Alignment(1.0, 0.0),
        padding: const EdgeInsets.only(right: 25.0),
        child: new Text("Forgot your password?",
            style: TextStyle(fontSize: 14.0, color: Colors.black)));

    double setPadding = (50 * sizeWidth) / 100;
    Container buttonSignIn = Container(
      alignment: const Alignment(0.0, 1.0),
      margin: EdgeInsets.only(left: setPadding),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0)),
          color: Colors.yellow),
      child: new GestureDetector(
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: new Text("SIGN IN",
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
        onTap: () {
          funcCheckNull();
          if (_checkSignIn) {
            print("Email, $_email");
            print("Pass, $_password");
            _auth.signIn(_email.text, _password.text).then((value) =>
                value != null
                    ? Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => MainViewScreen()))
                    : setState(() {
                        _checkIncorrect = true;
                      }));
          }
        },
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
              onPressed: () {
                _handleSignIn(context);
              },
            ),
          )),
          Expanded(
            child: new Container(
              margin: EdgeInsets.all(10.0),
              child: SignInButton(
                Buttons.Facebook,
                text: "Facebook",
                onPressed: () {
                  initiateFacebookLogin();
                },
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
            child: new GestureDetector(
                child: Text("Sign Up",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontSize: 16.0)),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new SignUpApp()));
                }),
          )
        ],
      ),
    );

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            text,
            editextEmail,
            txt_checkEmail,
            editextPassword,
            new Row(
              children: <Widget>[
                txt_checkPassword,
                Expanded(
                  child: forgotPassword,
                ),
              ],
            ),
            new Column(
              children: <Widget>[
                new Stack(
                  children: <Widget>[
                    txt_incorect,
                  ],
                ),
                buttonSignIn
              ],
            ),
            social,
            signUp
          ],
        ),
      ),
    );
  }
}
