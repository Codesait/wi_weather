import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/src/model.dart';
import 'package:wi_weather_app/src/utils.dart';

final dayPickerViewModel = ChangeNotifierProvider((_) => SetDayViewmodel());

class SetDayViewmodel extends ChangeNotifier {
  final log = getLogger('SetDayViewmodel');

  ForecastDay? _selectedDay;
  ForecastDay? get selectedDay => _selectedDay;

  Future<void> setSelectedDay(ForecastDay day) async {
    if (day == _selectedDay) return;

    await Future.delayed(const Duration(milliseconds: 100), () {
      _selectedDay = day;
    });
    notifyListeners();

    log.v('Selected Day: $_selectedDay');
  }
}
