import 'package:flutter/material.dart';
import 'package:wi_weather_app/presentation/components/custom/forcast_image_container.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class ForcastIconIndicator extends StatelessWidget {
  const ForcastIconIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return EightSidedContainer(
      size: fullHeight / 3.26,
      color: AppColors.myBlue,
      child: Image.asset(
        AppAssets.cloudyImage,
        height: fullHeight / 4.5,
        fit: BoxFit.contain,
      ),
    );
  }
}
