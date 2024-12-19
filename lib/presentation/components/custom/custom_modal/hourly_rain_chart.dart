import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/presentation/features/home/viewmodel/set_day_provider.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class HourlyRainChart extends ConsumerWidget {
  const HourlyRainChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDay = ref.watch(dayPickerViewModel).selectedDay;
    final mController = ref.watch(modalController);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: selectedDay!.hour.map((bar) {
          int getMaxPercentage() {
            return selectedDay.hour
                .map((bar) => bar.chance_of_rain)
                .reduce((a, b) => a > b ? a : b);
          }

          return SizedBox(
            width: 50,
            child: BarChartColumn(
              percentage: bar.chance_of_rain,
              time: UtilFunctions.formatDate(date: bar.time, pattern: 'ha'),
              maxHeight: mController.modalHeight()! / 4,
              maxPercentage: getMaxPercentage() == 0 ? 10 : getMaxPercentage(),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class BarChartColumn extends StatelessWidget {
  const BarChartColumn({
    required this.percentage,
    required this.time,
    required this.maxHeight,
    this.maxPercentage = 100,
    super.key,
  });
  final int percentage;
  final String time;
  final double maxHeight;
  final int maxPercentage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        border: Border.symmetric(vertical: BorderSide()),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '$percentage%',
            style: theme.textTheme.labelLarge!.copyWith(color: AppColors.black),
          ),
          const Spacer(),
          Container(
            height: (percentage / maxPercentage) * maxHeight,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border.symmetric(horizontal: BorderSide()),
              gradient: LinearGradient(
                colors: [Color(0xff702CD7), AppColors.rainColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            time,
            style: theme.textTheme.labelLarge!.copyWith(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
