import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wi_weather_app/utils/extension.dart';

class BaseModel extends ChangeNotifier {
  final minHeaderHeight = fullHeight * 0.2;

  late AnimationController animationController;

  double? lerp(double min, double max) => lerpDouble(
        min,
        max,
        animationController.value,
  );
}
