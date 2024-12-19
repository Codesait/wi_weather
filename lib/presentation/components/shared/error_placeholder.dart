import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({this.onRetryPress, super.key});
  final void Function()? onRetryPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: fullHeight,
      width: fullHeight,
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox.square(
            dimension: 70,
            child: Icon(
              Icons.refresh_rounded,
              size: 80,
              color: AppColors.primary,
            ),
          ),
          const Gap(20),
          const Text(
            'An Error occurd, please try again',
          ),
          const Gap(10),
          ButtonPill(
            width: 150,
            text: 'try again',
            onPressed: onRetryPress,
          ),
        ],
      ),
    );
  }
}
