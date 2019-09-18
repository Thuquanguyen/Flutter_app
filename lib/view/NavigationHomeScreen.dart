import 'package:app_manage/appTheme.dart';
import 'package:app_manage/view/AboutUsView.dart';
import 'package:app_manage/view/MainAppCustom.dart';
import 'package:app_manage/view/CustomDrawe.dart';
import 'package:app_manage/view/SettingViews.dart';
import 'package:flutter/material.dart';
import 'package:app_manage/view/MainApp.dart';
import 'package:app_manage/view/ListNotification.dart';
import 'package:app_manage/view/HealthView.dart';

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
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            animationController: (AnimationController animationController) {
              sliderAnimationController = animationController;
            },
            onDrawerCall: (int index) {
              changeIndex(index);
            },
            screenView: screenView,
          ),
        ),
      ),
    );
  }

  void changeIndex(int index) {
      if (index == 0) {
        setState(() {
          screenView = new MainApp();
        });
      } else if (index == 1) {
        setState(() {
          screenView = new ListNotification();
        });
      } else if (index == 2) {
        setState(() {
        });
      } else if (index == 3) {
        setState(() {
          screenView = new HealthOnePage();
        });
      } else if (index == 4) {
        setState(() {
          screenView = new SettingMain();
        });
      }else if (index == 5) {
        setState(() {

        });
      }else if (index == 6) {
        setState(() {
          screenView = new AboutUs();
        });
      }
  }
}