import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/utils/extension.dart';

class HomeAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
        centerTitle: true,
        backgroundColor: theme.scaffoldBackgroundColor,
        leading: ButtonPill(
          borderRadius: 100,
          color: Colors.transparent,
          child: SvgPicture.asset(
            AppAssets.brightnessIcon,
            height: 25,
            width: 25,
            colorFilter: ColorFilter.mode(
              theme.iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
        ),
        title: const _LocationIndicatorAndSelector(),
        actions: [
          ButtonPill(
            borderRadius: 100,
            color: Colors.transparent,
            child: SvgPicture.asset(
              AppAssets.personIcon,
              height: 25,
              width: 25,
              colorFilter: ColorFilter.mode(
                theme.iconTheme.color!,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _LocationIndicatorAndSelector extends StatelessWidget {
  const _LocationIndicatorAndSelector();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 40,
      width: fullWidth / 2.2,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: theme.hintColor.withOpacity(.3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AppAssets.locationIcon,
            height: 23,
            width: 23,
            colorFilter: ColorFilter.mode(
              theme.iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
          Text(
            'New York',
            style: theme.textTheme.titleMedium,
          ),
          Icon(
            Icons.arrow_drop_down_rounded,
            color: theme.iconTheme.color,
            size: 23,
          ),
        ],
      ),
    );
  }
}
