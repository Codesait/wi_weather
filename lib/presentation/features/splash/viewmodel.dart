import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/screens.dart';
import 'package:wi_weather_app/src/utils.dart';

class SplashViewModelController extends ChangeNotifier{

  Future<void> navigationDelay() async {
    /// Delaying the navigation for 3 seconds.
    await Future.delayed(const Duration(seconds: 3),(){
      Nav.popTo(const HomeScreen());
    });
  }

}
