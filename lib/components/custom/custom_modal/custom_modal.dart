import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class CustomModal extends StatefulWidget {
  const CustomModal({super.key});

  @override
  State<CustomModal> createState() => _CustomModalState();
}

class _CustomModalState extends State<CustomModal>
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
                        CurrentWeatherDetails(modalController: modalController),
                        const Gap(dimension: 20),
                        WeatherPredictions(controller: modalController),
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
  });

  final ModalController modalController;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: modalController.modalMinHeight / 1.2,
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
          GridView.builder(
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            itemBuilder: (context, index) {
              return const CurrentWeatherItem();
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 20,
              childAspectRatio: 3,
            ),
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
  });
  final ModalController controller;

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
              child: const Predictions(),
            ),
          ],
        ),
      ),
    );
  }
}

class Predictions extends StatelessWidget {
  const Predictions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      padding: const EdgeInsets.only(bottom: 60),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const PredictionListItem();
      },
    );
  }
}
