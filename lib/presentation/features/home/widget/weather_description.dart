import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/presentation/features/home/viewmodel/set_day_provider.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class WeatherDescription extends ConsumerWidget {
  const WeatherDescription({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final dataProvider = ref.watch(dayPickerViewModel);

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
                constraints: BoxConstraints(maxWidth: fullWidth / 3),
                color: theme.hintColor.withOpacity(.3),
                text: UtilFunctions.formatDate(
                  date: dataProvider.selectedDay?.date,
                  pattern: 'EEEE',
                ).toUpperCase(),
              ),
            ),
            const WidgetSpan(child: Gap(20)),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ButtonPill(
                  height: 48,
                  constraints: BoxConstraints(maxWidth: fullWidth / 2.4),
                  color: AppColors.lightOrange,
                  text:
                      '${'${dataProvider.selectedDay?.day.maxtemp_c}'.inDegree}C',
                  fontSize: 25,
                ),
              ),
            ),
            const WidgetSpan(child: Gap(20)),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  dataProvider.selectedDay?.day.condition.text ?? '--',
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            const WidgetSpan(child: Gap(20)),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: ButtonPill(
                height: 35,
                constraints: const BoxConstraints(maxWidth: 130),
                color: theme.hintColor.withOpacity(.3),
                text:
                    '${'${dataProvider.selectedDay?.day.avghumidity}'.inPercent} HUMMID',
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
