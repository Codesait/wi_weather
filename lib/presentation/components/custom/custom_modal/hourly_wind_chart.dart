import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/res.dart';

class HourlyWindChart extends StatelessWidget {
  const HourlyWindChart({super.key});

  @override
  Widget build(BuildContext context) {
    const data = <Map<String, dynamic>>[
      {
        'wind_kph': 48.9,
        'wind_dir': 'W', // Wind direction string
        'wind_degree': 260.0, // Wind direction in degrees
        'time': '2PM',
      },
      {
        'wind_kph': 10.9,
        'wind_dir': 'W', // Wind direction string
        'wind_degree': 200.0, // Wind direction in degrees
        'time': '2PM',
      },
      {
        'wind_kph': 332.9,
        'wind_dir': 'W', // Wind direction string
        'wind_degree': 180.0, // Wind direction in degrees
        'time': '2PM',
      },
      {
        'wind_kph': 38.9,
        'wind_dir': 'W', // Wind direction string
        'wind_degree': 260.0, // Wind direction in degrees
        'time': '2PM',
      },
      {
        'wind_kph': 38.9,
        'wind_dir': 'W', // Wind direction string
        'wind_degree': 240.0, // Wind direction in degrees
        'time': '2PM',
      },
      {
        'wind_kph': 38.9,
        'wind_dir': 'W', // Wind direction string
        'wind_degree': 165.0, // Wind direction in degrees
        'time': '2PM',
      },
      {
        'wind_kph': 38.9,
        'wind_dir': 'W', // Wind direction string
        'wind_degree': 210.0, // Wind direction in degrees
        'time': '2PM',
      },
    ];

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: data.map((windData) {
          return Expanded(
            child: WindColumn(
              speed: windData['wind_kph'] as double,
              direction: windData['wind_degree'] as double,
              directionLabel: windData['wind_dir'] as String,
              time: windData['time'] as String,
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

          // Rotated arrow for wind direction
          Column(
            children: [
              Transform.rotate(
                angle: direction * (3.14159265359 / 180), // Degrees to radians
                child: const Icon(
                  Icons.arrow_back, // Arrow icon
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
