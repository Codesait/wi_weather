import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class WeatherDescription extends StatelessWidget {
  const WeatherDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: fullWidth,
      padding: const EdgeInsets.only(top: 20),
      child: RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: ButtonPill(
                height: 40,
                constraints: const BoxConstraints(maxWidth: 90),
                color: theme.hintColor.withOpacity(.3),
                text: 'MONDAY',
              ),
            ),
            const WidgetSpan(child: Gap(20)),
            const TextSpan(text: 'Partly\n'),
            // const TextSpan(text: 'Cloudy'),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Cloudy',
                  style: theme.textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            const WidgetSpan(child: Gap(20)),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ButtonPill(
                  height: 48,
                  constraints: BoxConstraints(maxWidth: fullWidth / 2.5),
                  color: AppColors.lightOrange,
                  text: '28º C',
                  fontSize: 25,
                ),
              ),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: ButtonPill(
                height: 35,
                constraints: const BoxConstraints(maxWidth: 130),
                color: theme.hintColor.withOpacity(.3),
                text: '71% HUMMID',
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
          style: theme.textTheme.displayLarge!.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
