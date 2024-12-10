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
      body: Container(
        height: fullHeight,
        width: fullWidth,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WeatherDescription(),
            Expanded(
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
