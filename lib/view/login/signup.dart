import 'package:app_manage/Controller/signinStateFull.dart';
import 'package:app_manage/services/Auth.dart';
import 'package:flutter/material.dart';
import 'package:app_manage/view/SignInApp.dart';
import 'package:app_manage/Controller/signupStateFull.dart';

class SignUp extends State<SignUpStateFull> {
  Auth _auth = new Auth();
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _confirmPassword = new TextEditingController();
  var _checkEmail = false;
  var _checkPassowrd = false;
  var _checkConfirm = false;
  var _checkIncorrect = false;
  var _checkLenghtPass = false;
  var _checkAlready = false;
  var _checkSignUp = true;

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.width;
    var marginTopTitle = (10 * sizeHeight) / 100;
    funcCheckNull() {
      if (_email.text == "") {
        setState(() {
          _checkEmail = true;
           _checkSignUp = false;
        });
      }
      if (_password.text == "") {
        setState(() {
          _checkPassowrd = true;
           _checkSignUp = false;
        });
      }
      if (_confirmPassword.text == "") {
        setState(() {
          _checkConfirm = true;
           _checkSignUp = false;
        });
      }
    }

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
              child: new Text("Sign Up",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ));
    Container editextEmail = Container(
        padding: const EdgeInsets.only(
            left: 25.0, top: 15.0, bottom: 5.0, right: 25.0),
        child: new TextField(
            keyboardType: TextInputType.emailAddress,
            onTap: () {
              setState(() {
                _checkEmail = false;
                _checkIncorrect = false;
                _checkLenghtPass = false;
                _checkAlready = false;
                _checkSignUp = true;
              });
            },
            maxLines: 1,
            controller: _email,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText: "Email")));
    Container txt_checkEmail = new Container(
      padding: const EdgeInsets.only(left: 25.0),
      child: new Align(
        alignment: Alignment.topLeft,
        child: new Visibility(
          child: new Text("Email is required",
              style: TextStyle(color: Colors.red)),
          visible: _checkEmail,
        ),
      ),
    );
    Container txt_incorect = new Container(
      padding: EdgeInsets.only(
          top: (15 * sizeHeight) / 100, right: 10.0, bottom: 5.0),
      child: new Align(
        alignment: Alignment.topRight,
        child: new Visibility(
          child: new Text("Password incorrect!",
              style: TextStyle(color: Colors.red, fontSize: 15.0)),
          visible: _checkIncorrect,
        ),
      ),
    );
    Container txt_lenghtPass = new Container(
      padding: EdgeInsets.only(
          top: (15 * sizeHeight) / 100, right: 10.0, bottom: 5.0, left: 10.0),
      child: new Align(
        alignment: Alignment.topRight,
        child: new Visibility(
          child: new Text("Password should be at least 6 characters",
              style: TextStyle(color: Colors.red, fontSize: 15.0)),
          visible: _checkLenghtPass,
        ),
      ),
    );
    Container txt_emailAlready = new Container(
      padding: EdgeInsets.only(
          top: (15 * sizeHeight) / 100, right: 10.0, bottom: 5.0, left: 10.0),
      child: new Align(
        alignment: Alignment.topRight,
        child: new Visibility(
          child: new Text(
              "The email address is already in use by another account.",
              style: TextStyle(color: Colors.red, fontSize: 15.0)),
          visible: _checkAlready,
        ),
      ),
    );
    Container editextPassword = Container(
        padding: const EdgeInsets.only(left: 25.0, bottom: 10.0, right: 25.0),
        child: new TextField(
            onTap: () {
              setState(() {
                _checkPassowrd = false;
                _checkIncorrect = false;
                _checkLenghtPass = false;
                _checkAlready = false;
                _checkSignUp = true;
              });
            },
            controller: _password,
            obscureText: true,
            maxLines: 1,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText: "Password")));
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
    Container txt_checkConfirm = new Container(
      padding: const EdgeInsets.only(left: 25.0),
      child: new Align(
          alignment: Alignment.topLeft,
          child: new Visibility(
            child: new Text("Password Confirm is required",
                style: TextStyle(color: Colors.red)),
            visible: _checkConfirm,
          )),
    );
    Container editConfirmPassword = Container(
        padding: const EdgeInsets.only(left: 25.0, bottom: 10.0, right: 25.0),
        child: new TextField(
            onTap: () {
              setState(() {
                _checkConfirm = false;
                _checkIncorrect = false;
                _checkLenghtPass = false;
                _checkAlready = false;
                _checkSignUp = true;
              });
            },
            maxLines: 1,
            controller: _confirmPassword,
            obscureText: true,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Confirm Password")));

    Container serviceTerms = new Container(
      margin: const EdgeInsets.only(top: 15.0, right: 25.0, left: 25.0),
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
                child: new GestureDetector(
                    child: Text("Terms and Conditions ",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new SignInApp()));
                    }),
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
        onTap: () {
          funcCheckNull();
          if (_checkSignUp) {
            if (_password.text == _confirmPassword.text) {
              if (_password.text.length < 6) {
                setState(() {
                  _checkLenghtPass = true;
                });
              } else {
                _auth.signUp(_email.text, _password.text).then((value) =>
                    value != null
                        ? Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SignInStateFull()))
                        : setState(() {
                            _checkAlready = true;
                          }));
              }
            } else {
              setState(() {
                _checkIncorrect = true;
              });
            }
          }
        },
      ),
    );
    Container signUp = new Container(
      margin: const EdgeInsets.only(top: 70.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("You are have an Account? "),
          new GestureDetector(
              child: Text("Sign In",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontSize: 16.0)),
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new SignInApp()));
              }),
        ],
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: new Column(
          children: <Widget>[
            text,
            editextEmail,
            txt_checkEmail,
            editextPassword,
            txt_checkPassword,
            editConfirmPassword,
            txt_checkConfirm,
            serviceTerms,
            new Column(
              children: <Widget>[
                new Stack(
                  children: <Widget>[
                    txt_incorect,
                    txt_lenghtPass,
                    txt_emailAlready
                  ],
                ),
                buttonSignIn
              ],
            ),
            signUp,
          ],
        ),
      ),
    ));
  }
}
