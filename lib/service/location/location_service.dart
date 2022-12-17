import 'dart:developer';
import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:wi_weather_app/service/core/api_service.dart';
import 'package:wi_weather_app/utils/toasts.dart';

class LocationService {
  late Position position;

  // CHECKING IF LOCATION SERVICE IS AVAILABLE
  Future<bool> locationServiceEnabled() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      Tst.show('Location services are disabled.');
    }

    return serviceEnabled;
  }

  //LOCATION PERMISSION
  Future<bool> checkLocationPermisson() async {
    LocationPermission permission = await Geolocator.checkPermission();
    bool permissionGranted = false;

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Tst.show('Location permissions was denied');
      } else if (permission == LocationPermission.deniedForever) {
        log("'Location permissions are permanently denied");
      }
    } else {
      log("GPS Location permission granted.");
      permissionGranted = true;
    }
    return permissionGranted;
  }

  Future<Position> initPosition() async {
    return position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  String longitude() {
    return position.longitude.toString();
  }

  String latitude() {
    return position.latitude.toString();
  }

  // API CALLS
  final apiService = ApiService();

  final scheme = 'http';
  final host = 'api.weatherapi.com';
  final path = 'v1/forecast.json';
  final key = 'YOUR_KEY';

  Future<dynamic> getWeather({
    required String longitude,
    required String latitude,
  }) async {
    Map<String, dynamic> params = {
      'key': key,
      'q': '$latitude,$longitude',
      'days': '6',
    };

    return apiService.getMth(
      Uri.http(
        host,
        path,
        params,
      ),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      },
    );
  }
}
