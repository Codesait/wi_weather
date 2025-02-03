import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wi_weather_app/presentation/components/shared/gap.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class AnimatedSearchContainer extends StatefulWidget {
  // Replace String with your item type.

  const AnimatedSearchContainer({required this.items, super.key});
  final List<String> items;

  @override
  AnimatedSearchContainerState createState() => AnimatedSearchContainerState();
}

class AnimatedSearchContainerState extends State<AnimatedSearchContainer> {
  final double itemHeight = 50;
  final double maxContainerHeight = 300;

  @override
  Widget build(BuildContext context) {
    // Calculate the target height based on number of items, with a max cap.
    final double targetHeight = min(widget.items.length * itemHeight, maxContainerHeight);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const Gap(113),
          Container(
            height: 50,
            width: fullWidth * 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.primary,
            ),
          ).animate().scale(duration: 200.ms),
          const Gap(20),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            constraints: const BoxConstraints(minHeight: 100),
            height: targetHeight,
            decoration: BoxDecoration(
              color: AppColors.primary,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView.builder(
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.items[index]),
                );
              },
            ),
          ).animate().scale(duration: 300.ms),
          const Gap(20),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
            child: IconButton(
              onPressed:CustomOverlayController.instance.closeOverlay,
              icon: const Icon(Icons.clear),
              color: AppColors.white,
            ),
          ).animate().scale(duration: 370.ms),
        ],
      ),
    );
  }
}
