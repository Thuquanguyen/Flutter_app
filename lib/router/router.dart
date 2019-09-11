import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:app_manage/view/SignUpApp.dart';
import 'package:app_manage/view/SignInApp.dart';

class FluroRouter{
  static Router router = Router();
  static Handler _signInHandler = Handler(
    handlerFunc: (BuildContext context,Map<String, dynamic> param) => SignInApp()
  );
  static Handler _signUpHandler = Handler(
      handlerFunc: (BuildContext context,Map<String, dynamic> param) => SignUpApp()
  );

  static setUpRouter()
  {
    router.define('SignInApp', handler: _signInHandler);
    router.define("SignUpApp", handler: _signUpHandler);
  }
}