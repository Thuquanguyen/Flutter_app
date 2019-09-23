import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class Auth {
  Future<FirebaseUser> signUp(email, password) async {
    try {
      FirebaseUser user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      assert(user != null);
      assert(await user.getIdToken() != null);
      return user;
    } catch (e) {
      print("Error : $e");
      return null;
    }
  }

  Future<FirebaseUser> signIn(String email, String password) async {
    try {
      FirebaseUser user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      assert(user != null);
      assert(await user.getIdToken() != null);
      final FirebaseUser currentUser =
          await FirebaseAuth.instance.currentUser();
      assert(user.uid == currentUser.uid);
      return user;
    } catch (e) {
      print("Error : $e");
      return null;
    }
  }
}
