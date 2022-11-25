import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/utils.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
