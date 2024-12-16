import 'dart:async';
import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/model/base_model.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/utils/extension.dart';

final modalController = ChangeNotifierProvider((_) => ModalController());

class ModalController extends BaseModel {
  final modalMinHeight = 70.0;

  final curve = Curves.easeOut;
  final duration = const Duration(milliseconds: 200);

  TappedForcast _tappedForcast = TappedForcast.temperature;
  TappedForcast get tappedForcast => _tappedForcast;

  bool modalIsOpen = false;
  bool datesPanelOpen = false;

  TappedForcast _lastTappedForcast = TappedForcast.temperature;

  Color getModalColor(Color scaffColor) {
    if (!modalIsOpen) {
      return scaffColor;
    } else {
      switch (_tappedForcast) {
        case TappedForcast.temperature:
          return AppColors.tempColor;
        case TappedForcast.rain:
          return AppColors.rainColor;
        case TappedForcast.wind:
          return AppColors.windColor;
        case TappedForcast.days:
          return AppColors.green;
      }
    }
  }

  /**
   ** animate to open state
   */
  void tapToExpandeModal() {
    animationController.animateTo(1, curve: curve, duration: duration);
    Timer(const Duration(milliseconds: 210), () {
      modalIsOpen = true;
      notifyListeners();
    });

    //notifyListeners();
    log('Modal val: ${animationController.value}');
  }

  /**
   ** animate to closed state
   */
  void tapToCloseModal() {
    animationController.animateTo(0, curve: curve, duration: duration);
    modalIsOpen = false;

    notifyListeners();
    log('Modal val: ${animationController.value}');
  }

  void onWiseForcastTap(TappedForcast tappedForcast) {
    _tappedForcast = tappedForcast;
    _lastTappedForcast = tappedForcast;
    if (modalIsOpen) {
      notifyListeners();
      return;
    }

    tapToExpandeModal();
  }

  void showOrHideDates() {
    if (modalIsOpen) {
      _tappedForcast = (_tappedForcast != TappedForcast.days)
          ? TappedForcast.days
          : (_lastTappedForcast == TappedForcast.days)
              ? TappedForcast.temperature
              : _lastTappedForcast;
      notifyListeners();
    } else {
      onWiseForcastTap(TappedForcast.days);
    }
  }

  double? modalHeight() => lerp(modalMinHeight, fullHeight * .875);

  //! May use below code later
  // void handleDragUpdate(DragUpdateDetails details) {
  //   animationController.value -= details.primaryDelta! / modalHeight()!.round();
  //   log('Modal val: ${animationController.value}');
  //   notifyListeners();
  // }

  void handleDragEnd(DragEndDetails details) {
    if (animationController.isAnimating ||
        animationController.status == AnimationStatus.completed) {
      return;
    }

    final flingVelocity =
        details.velocity.pixelsPerSecond.dy / modalHeight()!.round();

    ///? Adjusts the fling velocity for the animation controller to ensure it is
    ///? within a minimum threshold. If the fling velocity is negative, it applies
    ///? a positive velocity using the maximum of 2 or the absolute value of the
    ///? fling velocity.
    if (flingVelocity < 0.0) {
      animationController.fling(velocity: math.max(2, -flingVelocity));
    }

    ///? Adjusts the animation controller's fling velocity when the fling velocity is positive.
    ///? The velocity is set to the minimum of -2 or the negative of the fling velocity.
    else if (flingVelocity > 0.0) {
      animationController.fling(velocity: math.min(-2, -flingVelocity));
      log('fling > 0.0');
    }

    ///? Triggers a fling animation on the animation controller based on its current value.
    ///? If the value is less than 0.5, the animation flings in reverse; otherwise, it flings forward.
    ///? Notifies listeners after the fling operation.
    else {
      animationController.fling(
        velocity: animationController.value < 0.5 ? -2.0 : 2.0,
      );
    }
    notifyListeners();
  }
}

enum TappedForcast {
  temperature,
  rain,
  wind,
  days,
}
