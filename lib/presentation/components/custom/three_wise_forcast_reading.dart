import 'package:flutter/material.dart';
import 'package:wi_weather_app/presentation/components/shared/gap.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class ForcastReadings extends StatelessWidget {
  const ForcastReadings({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: fullHeight / 5,
      width: fullWidth,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _ReadingCircleContainer(
              key: ValueKey('temp'),
              color: AppColors.tempColor,
              readingTitle: 'TEMP',
              child: _TemperatureGauge(
                currentTemperature: 28,
                maxTemperature: 30,
                minTemperature: 20,
              ),
            ),
          ),
          Expanded(
            child: _ReadingCircleContainer(
              key: ValueKey('rain'),
              color: AppColors.rainColor,
              readingTitle: 'RAIN',
              child: _RainBgAndPercentage(rainPrecentage: 5),
            ),
          ),
          Expanded(
            child: _ReadingCircleContainer(
              key: ValueKey('wind'),
              color: AppColors.windColor,
              readingTitle: 'WIND',
              child: _WindWidget(windSpeed: 6),
            ),
          ),
        ],
      ),
    );
  }
}

/**
 ** CIRCLE FOR THE FORCAST READINGS
 */
class _ReadingCircleContainer extends StatelessWidget {
  const _ReadingCircleContainer({
    required this.readingTitle,
    required this.child,
    this.color = Colors.orange,
    super.key,
  });
  final Color color;
  final String readingTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(
            minHeight: 120,
            minWidth: 120,
          ),
          child: CircleAvatar(
            backgroundColor: color,
            child: child,
          ),
        ),
        const Gap(5),
        SizedBox(
          height: 40,
          child: Text(
            readingTitle,
            style: theme.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w300,
              fontSize: 13,
              color: AppColors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

/**
 ** TEMPERATURE WIDGET
 */
class _TemperatureGauge extends StatelessWidget {
  const _TemperatureGauge({
    required this.currentTemperature,
    required this.maxTemperature,
    required this.minTemperature,
  });
  final int currentTemperature;
  final int maxTemperature;
  final int minTemperature;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: Divider(color: AppColors.black),
              ),
              const Gap(5),
              Expanded(
                flex: 3,
                child: Text(
                  'MAX $maxTemperature°',
                  style: theme.textTheme.labelLarge!.copyWith(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        ),

        /**
         *? Current Temp
         */
        SizedBox(
          width: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: Divider(color: AppColors.black),
              ),
              const Gap(5),
              Expanded(
                flex: 3,
                child: Text(
                  '$currentTemperature°',
                  style: theme.textTheme.labelLarge!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: Divider(color: AppColors.black),
              ),
              const Gap(5),
              Expanded(
                flex: 3,
                child: Text(
                  'MAX $minTemperature°',
                  style: theme.textTheme.labelLarge!.copyWith(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/**
 ** RAIN WIDGET
 */
class _RainBgAndPercentage extends StatelessWidget {
  const _RainBgAndPercentage({
    required this.rainPrecentage,
  });

  final int rainPrecentage;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final Widget line = Transform.rotate(
      angle: 45,
      child: Container(
        width: 3,
        height: 15,
        decoration: BoxDecoration(
          color: const Color(0xff5D47CE),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );

    return Stack(
      children: [
        Positioned(
          top: 25,
          right: 40,
          child: line,
        ),
        Positioned(
          top: 25,
          left: 45,
          child: line,
        ),
        Positioned(
          bottom: 20,
          left: 40,
          child: line,
        ),
        Positioned(
          bottom: 20,
          right: 45,
          child: line,
        ),
        Positioned(
          bottom: 50,
          right: 25,
          child: line,
        ),
        Positioned(
          bottom: 50,
          left: 25,
          child: line,
        ),
        Center(
          child: Text(
            '$rainPrecentage'.inPercent,
            style: theme.textTheme.labelLarge!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ),
      ],
    );
  }
}

/**
 ** WIND WIDGET
 */
class _WindWidget extends StatelessWidget {
  const _WindWidget({
    required this.windSpeed,
  });

  final int windSpeed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final Widget arrow = Transform.rotate(
      angle: 25,
      child: Icon(
        Icons.arrow_back_rounded,
        size: 30,
        color: AppColors.black.withOpacity(.6),
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        arrow,
        Text(
          '$windSpeed'.inKmPerHr,
          style: theme.textTheme.labelLarge!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        arrow,
      ],
    );
  }
}
