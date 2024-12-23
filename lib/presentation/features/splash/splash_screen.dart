import 'package:flutter/material.dart';
import 'package:wi_weather_app/presentation/components/shared/gap.dart';
import 'package:wi_weather_app/presentation/features/splash/viewmodel.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/utils/extension.dart';

class WiSplash extends StatefulWidget {
  const WiSplash({super.key});

  @override
  State<WiSplash> createState() => _WiSplashState();
}

class _WiSplashState extends State<WiSplash> {
  final controller = SplashViewModelController();
  @override
  void initState() {
     controller.navigationDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: fullHeight,
        width: fullHeight,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logo,
              width: 150,
              height: 150,
            ),
            Text(
              'Clime'.toUpperCase(),
              softWrap: true,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    wordSpacing: 10,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            const Gap(20),
            SizedBox(
              width: 200,
              child: Text(
                'Weather Forecast But Really Fun!',
                softWrap: true,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      wordSpacing: 10,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
