import 'package:flutter/material.dart';
import 'package:wi_weather_app/screens/home/views/home.dart';
import 'package:wi_weather_app/utils/navigator.dart';

class SplashViewModelController extends ChangeNotifier{

  Future navigationDelay() async {
    /// Delaying the navigation for 3 seconds.
    Future.delayed(const Duration(seconds: 3)).then((val) {
      /// A custom function to navigate to the home screen.
      Nav.popTo(const HomeScreen());
    });
  }

}