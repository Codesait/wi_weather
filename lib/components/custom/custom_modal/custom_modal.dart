import 'package:flutter/material.dart';
import 'package:wi_weather_app/components/custom/custom_modal/modal_controller.dart';
import 'package:wi_weather_app/components/reusables/weather_large_text.dart';
import 'package:wi_weather_app/res/constants/app_colors.dart';
import 'package:wi_weather_app/utils/extension.dart';

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
              child: Column(
                children: [
                  modalPicker,
                  CurrentWeatherDetails(modalController: modalController),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Container modalPicker = Container(
    height: 15,
    width: 50,
    decoration: BoxDecoration(
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(10),
    ),
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
      height: modalController.modalMinHeight / 1.2,
      width: fullWidth,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // header text
          const WeatherLargeText(),

          // spacing
          const SizedBox.square(
            dimension: 10,
          ),
          Flexible(
            child: GridView.builder(
              itemCount: 6,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              itemBuilder: (context, index) {
                return const SizedBox(height: 50, child: Placeholder());
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 20,
                childAspectRatio: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
