import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/screens.dart';
import 'package:wi_weather_app/src/utils.dart';

class SplashViewModelController extends ChangeNotifier{

  Future navigationDelay() async {
    /// Delaying the navigation for 3 seconds.
    Future.delayed(const Duration(seconds: 3)).then((val) {
      /// A custom function to navigate to the home screen.
      Nav.popTo(const HomeScreen());
    });
  }

}