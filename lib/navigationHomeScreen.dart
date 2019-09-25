import 'package:app_manage/appTheme.dart';
import 'package:app_manage/customDrawer/drawerUserController.dart';
import 'package:app_manage/customDrawer/homeDrawer.dart';
import 'package:app_manage/feedbackScreen.dart';
import 'package:app_manage/helpScreen.dart';
import 'package:app_manage/inviteFriendScreen.dart';
import 'package:app_manage/view/AboutUsView.dart';
import 'package:app_manage/view/HealthView.dart';
import 'package:app_manage/view/ListNotification.dart';
import 'package:app_manage/view/MainApp.dart';
import 'package:app_manage/view/SettingViews.dart';
import 'package:flutter/material.dart';

import 'designCourse/homeDesignCourse.dart';
import 'fitnessApp/fitnessAppHomeScreen.dart';
import 'hotelBooking/hotelHomeScreen.dart';

class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;
  AnimationController sliderAnimationController;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = MainApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            animationController: (AnimationController animationController) {
              sliderAnimationController = animationController;
            },
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
            },
            screenView: screenView,
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = MainApp();
        });
      } else if (drawerIndex == DrawerIndex.DIARY) {
        setState(() {
          screenView = HotelHomeScreen();
        });
      } else if (drawerIndex == DrawerIndex.Course) {
        setState(() {
          screenView = FitnessAppHomeScreen();
        });
      } else if (drawerIndex == DrawerIndex.Help) {
        setState(() {
          screenView = DesignCourseHomeScreen();
        });
      } else if (drawerIndex == DrawerIndex.FeedBack) {
        setState(() {
          screenView = ListNotification();
        });
      } else if (drawerIndex == DrawerIndex.Invite) {
        setState(() {
          screenView = HealthOnePage();
        });
      } else if (drawerIndex == DrawerIndex.Share) {
        setState(() {
          screenView = SettingMain();
        });
      } else if (drawerIndex == DrawerIndex.About) {
        setState(() {
          screenView = AboutUs();
        });
      }
    }
  }
}
