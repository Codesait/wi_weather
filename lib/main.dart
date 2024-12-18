import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wi_weather_app/app.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: 'secrets.env');

  runApp(
    const ProviderScope(child: MyApp()),
  );
}
