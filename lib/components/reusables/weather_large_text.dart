import 'package:flutter/material.dart';
import 'package:wi_weather_app/res/constants/app_colors.dart';

class WeatherLargeText extends StatelessWidget {
  const WeatherLargeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Weather Now',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.black,
          fontSize: 18,
        ));
  }
}
