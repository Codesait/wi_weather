import 'package:flutter/material.dart';
import 'package:wi_weather_app/presentation/components/custom/wi_header/header_controller.dart';
import 'package:wi_weather_app/model/current_weather.dart';
import 'package:wi_weather_app/model/location_model.dart';
import 'package:wi_weather_app/res/constants/app_colors.dart';
import 'package:wi_weather_app/utils/extension.dart';

class WiHeader extends StatefulWidget {
  const WiHeader({
    super.key,
    required this.currentWeather,
    required this.location,
  });

  final Location location;
  final Current currentWeather;

  @override
  State<WiHeader> createState() => _WiHeaderState();
}

class _WiHeaderState extends State<WiHeader> {
  final headerController = HeaderController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: headerController.headerHeight - 30,
      child: Column(
        children: <Widget>[
          HeaderTitle(
            controller: headerController,
            locationCountry: widget.location.name!,
            locationName: widget.location.country!,
            localTime: widget.location.formattedTime,
          ),
          const Expanded(
            flex: 4,
            child: WeatherVector(),
          ),
          Expanded(
            flex: 4,
            child: WeatherReading(
              temp: widget.currentWeather.tempC!.round().toString(),
              condition: widget.currentWeather.condition!.text!,
            ),
          )
        ],
      ),
    );
  }
}

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    super.key,
    required this.controller,
    required this.locationCountry,
    required this.locationName,
    required this.localTime,
  });
  final HeaderController controller;
  final String locationName;
  final String locationCountry;
  final String localTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      height: controller.minHeaderHeight,
      width: fullWidth,
      alignment: Alignment.bottomCenter,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            '$locationName, $locationCountry',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              fontSize: 16        ,
            ),
          ),
        ),
        subtitle: Text(
          localTime,
          style: const TextStyle(
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
  const WeatherReading({
    super.key,
    required this.temp,
    required this.condition,
  });
  final String temp;
  final String condition;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            temp.inDegree,
            style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: AppColors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                condition,
                style: const TextStyle(
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
