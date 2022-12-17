import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class PredictionListItem extends StatelessWidget {
  const PredictionListItem({
    super.key,
    required this.weekDay,
    required this.temp,
    required this.condition,
  });
  final String weekDay;
  final String temp;
  final String condition;

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
           Expanded(
            flex: 2,
            child: Text(
              weekDay,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
          ),

          // temperature value
          Expanded(
            child: Text(
              temp.inDegree,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 16,
              ),
            ),
          ),

          // weather state
           Expanded(
            child: Text(
              condition,
              style: const TextStyle(
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
