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
    //final provider = ref.watch(homeViewModel);

    return Scaffold(
      appBar: const HomeAppbarWidget(),
      body: SafeArea(
        child: Container(
          height: fullHeight,
          width: fullWidth,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const WeatherDescription(),
              const ForcastIconIndicator(),
              SizedBox(
                height: fullHeight / 5,
                child: const Placeholder(),
              ),
              const Gap(70)
            ],
          ),
        ),
      ),
      bottomSheet:  Container(
        height: 70,
        child: Placeholder(),
      ),
    );
  }
}
