import 'package:app_manage/view/designCourse/homeDesignCourse.dart';
import 'package:app_manage/view/fitnessApp/fitnessAppHomeScreen.dart';
import 'package:app_manage/view/hotelBooking/hotelHomeScreen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  Widget navigateScreen;
  String imagePath;

  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  static List<HomeList> homeList = [
    HomeList(
      imagePath: "assets/hotel/hotel_booking.png",
      navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath: "assets/fitness_app/fitness_app.png",
      navigateScreen: FitnessAppHomeScreen(),
    ),
    HomeList(
      imagePath: "assets/design_course/design_course.png",
      navigateScreen: DesignCourseHomeScreen(),
    ),
  ];
}
