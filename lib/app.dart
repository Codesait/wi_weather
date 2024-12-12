import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wi_weather_app/src/screens.dart';
import 'package:wi_weather_app/src/service.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (_, __) {
          return MaterialApp(
            navigatorKey: navigatorKey,
            title: 'Wi Weather',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            home: const WiSplash(),
          );
        },);
  }
}
