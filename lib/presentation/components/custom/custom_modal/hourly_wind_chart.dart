import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/presentation/features/home/viewmodel/set_day_provider.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class HourlyWindChart extends ConsumerWidget {
  const HourlyWindChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDay = ref.watch(dayPickerViewModel).selectedDay;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: selectedDay!.hour.map((windData) {
          return SizedBox(
            width: 50,
            child: WindColumn(
              speed: windData.wind_kph,
              direction: double.parse(windData.wind_degree.toString()),
              directionLabel: windData.wind_dir,
              time: UtilFunctions.formatDate(
                date: windData.time,
                pattern: 'ha',
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class WindColumn extends StatelessWidget {
  const WindColumn({
    required this.speed,
    required this.direction,
    required this.directionLabel,
    required this.time,
    super.key,
  });

  final double speed; // Wind speed (kph or mph)
  final double direction; // Wind direction in degrees
  final String directionLabel; // Wind direction label (e.g., W, NE)
  final String time; // Time of data update

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        border: Border.symmetric(vertical: BorderSide()),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Wind speed
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: '${speed.round()}\n'),
                const TextSpan(text: 'km/h'),
              ],
            ),
            textAlign: TextAlign.center,
            style: theme.textTheme.labelLarge!
                .copyWith(color: AppColors.black, fontSize: 11),
          ),

          //* Rotated arrow for wind direction
          Column(
            children: [
              Transform.rotate(
                angle: direction * (3.14159265359 / 180), //? Degrees to radians
                child: const Icon(
                  Icons.arrow_back, 
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                directionLabel,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          ),

          // Time of update
          Text(
            time,
            style: theme.textTheme.labelLarge!
                .copyWith(color: AppColors.black, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
