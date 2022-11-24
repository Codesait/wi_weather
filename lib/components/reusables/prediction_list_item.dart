import 'package:flutter/material.dart';
import 'package:wi_weather_app/res/constants/app_colors.dart';
import 'package:wi_weather_app/utils/extension.dart';

class PredictionListItem extends StatelessWidget {
  const PredictionListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: fullWidth,
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey,
          width: 0.2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Day of the week
          const Expanded(
            flex: 2,
            child: Text(
              'Today',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
          ),

          // temperature value
          Expanded(
            child: Text(
              '16'.inDegree,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
          ),

          // weather state
          const Expanded(
            child: Text(
              'Cloudy',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
