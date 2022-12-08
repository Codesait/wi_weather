import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/screens/home/viewmodel/home_viewmodel.dart';
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
    ref.read(homeViewModel).load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: fullHeight,
        width: fullWidth,
        child: Stack(
          children: const <Widget>[
            WiHeader(),
            CustomModal(),
          ],
        ),
      ),
    );
  }
}
