import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/res.dart';

class WeatherLargeText extends StatelessWidget {
  const WeatherLargeText({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.black,
          fontSize: 18,
        ),);
  }
}
