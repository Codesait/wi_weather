import 'package:flutter/material.dart';
import 'package:wi_weather_app/components/custom/custom_modal/modal_controller.dart';

class CustomModal extends StatefulWidget {
  const CustomModal({super.key});

  @override
  State<CustomModal> createState() => _CustomModalState();
}

class _CustomModalState extends State<CustomModal>
    with SingleTickerProviderStateMixin {
  final modalControler = ModalController();

  @override
  void initState() {
    modalControler.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    super.initState();
  }

  @override
  void dispose() {
    modalControler.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: modalControler.animationController,
      builder: (context, _) {
        return Positioned(
          height: modalControler.modalHeight(),
          bottom: 0,
          left: 0,
          right: 0,
          child: GestureDetector(
            onVerticalDragUpdate: modalControler.handleDragUpdate,
            onVerticalDragEnd: modalControler.handleDragEnd,
            child: Container(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
