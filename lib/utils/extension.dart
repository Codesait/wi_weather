import 'package:flutter/material.dart';
import 'package:wi_weather_app/app.dart';

double get fullHeight =>
    MediaQuery.of(navigatorKey.currentState!.context).size.height;

double get fullWidth =>
    MediaQuery.of(navigatorKey.currentState!.context).size.width;

extension StringSymbol on String {
  String get indegree => '$this\u00B0';
}
