import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/res.dart';

class CurrentWeatherItem extends StatelessWidget {
  const CurrentWeatherItem({
    super.key,
    required this.val,
    required this.readTitle,
    required this.icon,
    
  });

  final String readTitle;
  final String val;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          // weather detail icon
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.grey.withOpacity(0.1),
            child: Center(
              child: SvgPicture.asset(
                icon,
                height: 25,
                width: 25,
              ),
            ),
          ),

          const Gap(dimension: 10),

          // weather description
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                readTitle,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: AppColors.grey.withOpacity(0.5),
                  fontSize: 14,
                ),
              ),
              const Gap(dimension: 5),
              Text(
                val,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                  fontSize: 15,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
