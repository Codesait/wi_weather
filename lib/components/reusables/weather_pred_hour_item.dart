import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/model.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class HourlyPredictionItem extends StatelessWidget {
  const HourlyPredictionItem({
    super.key,
    required this.hour,
  });
  final Hour hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hour.formattedTime,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 20,
              childAspectRatio: 3,
            ),
            children: [
              CurrentWeatherItem(
                readTitle: 'Feel like',
                val: hour.feelslikeC.toString().inDegree,
                icon: AppAssets.tempIcon,
              ),
              CurrentWeatherItem(
                readTitle: 'Wind',
                val: hour.windKph.toString().inKmPerHr,
                icon: AppAssets.airIcon,
              ),
              CurrentWeatherItem(
                readTitle: 'Perciitation',
                val: hour.precipIn!.round().toString().inPercent,
                icon: AppAssets.rainIcon,
              ),
              CurrentWeatherItem(
                readTitle: 'Humidity',
                val: hour.humidity.toString().inPercent,
                icon: AppAssets.humidityIcon,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
