import 'package:flutter/material.dart';
import 'package:wi_weather_app/presentation/features/splash/viewmodel.dart';
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
        child: const Text(
          'Wi Weather',
          style: TextStyle(color: Colors.blueAccent, fontSize: 30),
        ),
      ),
    );
  }
}
