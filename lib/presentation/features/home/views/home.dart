import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/utils.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    // ref.read(homeViewModel).initLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mController = ref.watch(modalController);

    return Scaffold(
      appBar: const HomeAppbarWidget(),
      body: SafeArea(
        bottom: !mController.modalIsOpen,
        child: SizedBox(
          height: fullHeight,
          width: fullWidth,
          child: Stack(
            children: [
              Container(
                height: getContainerHeight,
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 80),
                // color: Colors.amber,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const WeatherDescription(),
                      const ForcastIconIndicator(),
                      ForcastReadings(
                        onTepmtForcastTapped: () {
                          mController
                              .onWiseForcastTap(TappedForcast.temperature);
                        },
                        onRainForcastTapped: () {
                          mController.onWiseForcastTap(TappedForcast.rain);
                        },
                        onWindForcastTapped: () {
                          mController.onWiseForcastTap(TappedForcast.wind);
                        },
                      ),
                      // Gap(70)
                    ],
                  ),
                ),
              ),
              const CustomModal(),
            ],
          ),
        ),
      ),
    );
  }
}
