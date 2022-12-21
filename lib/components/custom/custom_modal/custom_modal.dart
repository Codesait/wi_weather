import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/model.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/screens.dart';
import 'package:wi_weather_app/src/utils.dart';

class CustomModal extends ConsumerStatefulWidget {
  const CustomModal({super.key});

  @override
  CustomModalState createState() => CustomModalState();
}

class CustomModalState extends ConsumerState<CustomModal>
    with SingleTickerProviderStateMixin {
  final modalController = ModalController();

  @override
  void initState() {
    modalController.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    super.initState();
  }

  @override
  void dispose() {
    modalController.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(homeViewModel);

    return AnimatedBuilder(
      animation: modalController.animationController,
      builder: (context, _) {
        return Positioned(
          height: modalController.modalHeight(),
          bottom: 0,
          left: 0,
          right: 0,
          child: GestureDetector(
            onVerticalDragUpdate: modalController.handleDragUpdate,
            onVerticalDragEnd: modalController.handleDragEnd,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    child: modalPicker,
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CurrentWeatherDetails(
                          modalController: modalController,
                          current: provider.currentWeather!,
                        ),
                        const Gap(dimension: 20),
                        WeatherPredictions(
                          controller: modalController,
                          forecast: provider.dailyForecast!,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget modalPicker = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 15,
        width: 50,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ],
  );
}

class CurrentWeatherDetails extends StatelessWidget {
  const CurrentWeatherDetails({
    super.key,
    required this.modalController,
    required this.current,
  });

  final ModalController modalController;
  final Current current;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // header text
          const WeatherLargeText(
            text: 'Weather now',
          ),

          // spacing
          const SizedBox.square(
            dimension: 20,
          ),

          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 20,
              childAspectRatio: 3,
            ),
            children: [
              CurrentWeatherItem(
                readTitle: 'Feel like',
                val: current.feelslikeC.toString().inDegree,
                icon: AppAssets.tempIcon,
              ),
              CurrentWeatherItem(
                readTitle: 'Wind',
                val: current.windKph.toString().inKmPerHr,
                icon: AppAssets.airIcon,
              ),
              CurrentWeatherItem(
                readTitle: 'Perciitation',
                val: current.precipIn!.round().toString().inPercent,
                icon: AppAssets.rainIcon,
              ),
              CurrentWeatherItem(
                readTitle: 'Humidity',
                val: current.humidity.toString().inPercent,
                icon: AppAssets.humidityIcon,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WeatherPredictions extends StatelessWidget {
  const WeatherPredictions({
    super.key,
    required this.controller,
    required this.forecast,
  });
  final ModalController controller;
  final Forecast forecast;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: controller.animationController.value,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const WeatherLargeText(
                  text: 'Prediction',
                ),
                Text(
                  'Weekly',
                  style: TextStyle(
                    color: AppColors.grey.withOpacity(0.7),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const Gap(dimension: 10),
            Container(
              constraints: BoxConstraints(
                minHeight: controller.modalFullHeight / 3,
                maxHeight: controller.modalFullHeight / 2.4,
                minWidth: fullWidth,
              ),
              child: Predictions(
                predictions: forecast.forecastday!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Predictions extends StatelessWidget {
  const Predictions({
    super.key,
    required this.predictions,
  });
  final List<Forecastday> predictions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: predictions.length,
      padding: const EdgeInsets.only(bottom: 60),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final weekDay = predictions[index];
        return PredictionListItem(
          weekDay: weekDay.formattedDate!,
          temp: weekDay.day!.maxtempC!.round().toString(),
          condition: weekDay.day!.condition!.text!,
          hourlyPredictions: weekDay.hour!,
        );
      },
    );
  }
}
