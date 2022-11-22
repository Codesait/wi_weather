import 'package:flutter/material.dart';
import 'package:wi_weather_app/components/custom/wi_header/header_controller.dart';
import 'package:wi_weather_app/res/constants/app_colors.dart';
import 'package:wi_weather_app/utils/extension.dart';

class WiHeader extends StatefulWidget {
  const WiHeader({super.key});

  @override
  State<WiHeader> createState() => _WiHeaderState();
}

class _WiHeaderState extends State<WiHeader> {
  final headerController = HeaderController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: headerController.headerHeight,
      child: Column(
        children: <Widget>[
          HeaderTitle(controller: headerController),
          const Expanded(
            flex: 4,
            child: WeatherVector(),
          ),
          const Expanded(
            flex: 4,
            child: WeatherReading(),
          )
        ],
      ),
    );
  }
}

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key, required this.controller});
  final HeaderController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      height: controller.minHeaderHeight,
      width: fullWidth,
      alignment: Alignment.bottomCenter,
      child: ListTile(
        title: const Text(
          'Halo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.white,
            fontSize: 18,
          ),
        ),
        subtitle: const Text(
          'Today, Sept 8 9:00 PM',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: AppColors.white,
          ),
        ),
        trailing: CircleAvatar(
          backgroundColor: AppColors.white,
          radius: 20,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ),
      ),
    );
  }
}

class WeatherVector extends StatelessWidget {
  const WeatherVector({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/sunny.png');
  }
}

class WeatherReading extends StatelessWidget {
  const WeatherReading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '21'.inDegree,
            style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: AppColors.white),
          ),
          Row(
            children: const [
              Text(
                'Sunny',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: AppColors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
