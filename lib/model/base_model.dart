import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wi_weather_app/utils/extension.dart';

class BaseModel extends ChangeNotifier {
  final minHeaderHeight = fullHeight * 0.2;

  bool isLoading = false;

  loading(bool res, {bool canRebuild = false}) {
    isLoading = res;
    log(isLoading.toString());

    if (canRebuild) notifyListeners();
  }

  late AnimationController animationController;

  double? lerp(double min, double max) => lerpDouble(
        min,
        max,
        animationController.value,
      );
}
