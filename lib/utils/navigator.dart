import 'package:flutter/material.dart';
import 'package:wi_weather_app/app.dart';
import 'package:wi_weather_app/utils/logger.dart';

class Nav {
  static const className = 'Navigtor';

  /// >  [popTo] pops the current page off the stack and replaces it with the page passed in
  ///
  /// Args:
  ///   page (Widget): The page to pop to.
  static void popTo(Widget page) {
    ///* A function that pops the current page off the stack and replaces it with the page passed in.
    ///* and Logging the action to the console.
    getLogger(className).d('POPPED TO: $page');
    Navigator.pushReplacement(
      navigatorKey.currentContext!,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => page,
      ),
    );
  }

  /// [goTo] is a function that takes a `Widget` as a parameter and navigates to that page
  ///
  /// Args:
  ///   page (Widget): The page to navigate to.
  static void goTo(Widget page) {
    Navigator.push(
      navigatorKey.currentContext!,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => page,
      ),
    ).then((v) => getLogger(className).d('NAVIGATING TO: $page'));
  }
}
