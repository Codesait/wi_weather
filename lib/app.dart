import 'package:flutter/material.dart';
import 'package:wi_weather_app/screens/splash/splash_screen.dart';


final navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Wi Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WiSplash(),
    );
  }
}
