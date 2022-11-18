import 'package:flutter/material.dart';
import 'package:wi_weather_app/components/custom/custom_modal/custom_modal.dart';
import 'package:wi_weather_app/components/custom/wi_header/header_widget.dart';
import 'package:wi_weather_app/utils/extension.dart';

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
