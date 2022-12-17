import 'package:flutter/material.dart';
import 'package:wi_weather_app/app.dart';

double get fullHeight =>
    MediaQuery.of(navigatorKey.currentState!.context).size.height;

double get fullWidth =>
    MediaQuery.of(navigatorKey.currentState!.context).size.width;

extension StringSymbol on String {
  String get inDegree => '$this \u00B0';
  String get inKmPerHr => '$this km/h';
  String get inPercent => '$this %';
}

extension AssetExtensions on String {
  String get png => 'assets/images/$this.png';
  String get svg => 'assets/icons/$this.svg';
}
