import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:wi_weather_app/model/base_model.dart';
import 'package:wi_weather_app/utils/extension.dart';

class ModalController extends BaseModel {
  final modalMinHeight = fullHeight * 0.3;
  final modalFullHeight = fullHeight;

  double? modalHeight() => lerp(modalMinHeight, fullHeight - minHeaderHeight);

  void handleDragUpdate(DragUpdateDetails details) {
    animationController.value -=
        details.primaryDelta! / modalHeight()!.round();
    notifyListeners();
  }

  void handleDragEnd(DragEndDetails details) {
    if (animationController.isAnimating ||
        animationController.status == AnimationStatus.completed) {
      return;
    }

    final flingVelocity =
        details.velocity.pixelsPerSecond.dy / modalHeight()!.round();
    if (flingVelocity < 0.0) {
      animationController.fling(velocity: math.max(2, -flingVelocity));
      notifyListeners();
    } else if (flingVelocity > 0.0) {
      animationController.fling(velocity: math.min(-2, -flingVelocity));
      notifyListeners();
    } else {
      animationController.fling(
          velocity: animationController.value < 0.5 ? -2.0 : 2.0,);
      notifyListeners();
    }
  }
}
