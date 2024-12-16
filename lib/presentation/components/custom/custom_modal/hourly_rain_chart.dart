import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/res.dart';

class HourlyRainChart extends StatelessWidget {
  const HourlyRainChart({super.key});

  @override
  Widget build(BuildContext context) {
    const data = <Map<String, dynamic>>[
      {'percentage': 1, 'time': '4pm'},
      {'percentage': 1, 'time': '7pm'},
      {'percentage': 2, 'time': '10pm'},
      {'percentage': 3, 'time': '1am'},
      {'percentage': 10, 'time': '4am'},
      {'percentage': 3, 'time': '7am'},
      {'percentage': 2, 'time': '10pm'},
      {'percentage': 2, 'time': '1pm'},
    ];

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: data.map((bar) {
          return Consumer(
            builder: (context, ref, _) {
              return Expanded(
                child: BarChartColumn(
                  percentage: bar['percentage'] as int,
                  time: bar['time'] as String,
                  maxHeight: ref.watch(modalController).modalHeight()! / 4,
                ),
              );
            },
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
    super.key,
  });
  final int percentage;
  final String time;
  final double maxHeight;

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
            height: (percentage / 10) * maxHeight, // Scaled height
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
