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

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Calculate the target height based on number of items, with a max cap.
    final double targetHeight = min(widget.items.length * itemHeight, maxContainerHeight);
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const Gap(113),
          Container(
            height: 45,
            width: fullWidth * 1.1,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.offWhite,
            ),
            child: TextField(
              controller: searchController,
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Search places',
                hintStyle: theme.textTheme.displaySmall?.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
                border: InputBorder.none,
              ),
              cursorHeight: 15,
              cursorColor: AppColors.white,
            ),
          ).animate().scale(duration: 200.ms),

          const Gap(10),

          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            constraints: const BoxConstraints(minHeight: 100),
            height: targetHeight,
            decoration: BoxDecoration(
              color: AppColors.offWhite,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListView.builder(
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.items[index]),
                );
              },
            ),
          ),
          const Gap(20),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
            child: IconButton(
              onPressed: CustomOverlayController.instance.closeOverlay,
              icon: const Icon(Icons.clear),
              color: AppColors.grey,
            ),
          ).animate().scale(duration: 370.ms),
        ],
      ),
    );
  }
}
