import 'package:flutter/material.dart';
import 'package:wi_weather_app/components/custom/wi_header/header_controller.dart';

class WiHeader extends StatefulWidget {
  const WiHeader({super.key});

  @override
  State<WiHeader> createState() => _WiHeaderState();
}

class _WiHeaderState extends State<WiHeader> {
  final headerController = HeaderController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: headerController.headerHeight,
    );
  }
}
